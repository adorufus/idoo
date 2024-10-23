import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:idoo/app/modules/landing/controllers/landing_api_consumer.dart';
import 'package:idoo/app/routes/app_pages.dart';

class LandingController extends GetxController {
  LandingApiConsumer apiConsumer = Get.find<LandingApiConsumer>();
  bool isTokenVerified = false;

  GetStorage storage = GetStorage();

  @override
  void onInit() {
    super.onInit();

    print("landing init");

    onVerify();
    initializeFirebaseCloudMessaging();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void startupCheck() {
    if (storage.read('isLoggedIn') == true &&
        storage.hasData("creds") &&
        isTokenVerified) {
      Get.toNamed(Routes.PIN, arguments: {
        'title': 'Masukan PIN',
        'current_context': Routes.LANDING
      });
    } else {
      Get.toNamed(Routes.LOGIN);
    }
  }

  void initializeFirebaseCloudMessaging() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    await messaging.requestPermission();

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
      Get.snackbar('Notification', message.notification?.title ?? 'No title');
    });

    // Handle background and terminated state notifications
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('Notification caused app to open');
      // Optionally navigate using GetX
      // Get.to(
      //     NotificationDetailsScreen(notification: message.notification?.title));
    });

    FirebaseMessaging.onBackgroundMessage(backgroundMessageCallback);
  }

  Future<void> backgroundMessageCallback(RemoteMessage message) async {
    print("Background message: ${message.notification?.title}");
  }

  void onVerify() {
    if (storage.hasData("creds")) {
      Map<String, dynamic> creds = storage.read("creds");

      apiConsumer.verifyToken().then((res) {
        print(res.body);
        if (res.statusCode != 200) {
          print(res.body);

          if (res.body["message"] == "invalid token") {
            isTokenVerified = false;
          }
        } else {
          isTokenVerified = true;

          if (creds.isNotEmpty) {
            creds["accessToken"] = res.body["accessToken"];
            creds["refreshToken"] = res.body["refreshToken"];

            storage.write("creds", creds);
          }
        }
      });
    }
  }
}
