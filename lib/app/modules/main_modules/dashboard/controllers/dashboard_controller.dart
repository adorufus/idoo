import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class DashboardController extends GetxController {
  var currentTab = 0.obs;
  GetStorage storage = GetStorage();

  void changeScreen(int tab) {
    currentTab.value = tab;
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();

    initializeFirebaseCloudMessaging();
  }

  void initializeFirebaseCloudMessaging() async {
    String? token = await FirebaseMessaging.instance.getToken();

    print(token);

    storage.write("fcm_token", token);

    listenToIncomingNotifications();
  }

  void listenToIncomingNotifications() {
    // Listen for foreground messages
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Message received: ${message.notification?.title}');
      // Update GetX observable with the notification data
      // notificationData.value = message.notification?.title ?? 'No title';

      // Optionally show a snackbar
      Get.snackbar(message.notification?.title ?? "",
          message.notification?.body ?? 'No title');
    });

    // Handle background and terminated state notifications
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('Notification caused app to open');
      // Optionally navigate using GetX
      // Get.to(
      //     NotificationDetailsScreen(notification: message.notification?.title));
    });

    // FirebaseMessaging.onBackgroundMessage(backgroundMessageCallback);
  }

  Future<void> backgroundMessageCallback(RemoteMessage message) async {
    print("Background message: ${message.notification?.title}");
  }
}
