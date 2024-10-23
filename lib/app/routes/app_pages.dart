import 'package:get/get.dart';
import 'package:idoo/app/modules/auth_modules/pin/bindings/pin_binding.dart';
import 'package:idoo/app/modules/auth_modules/pin/views/pin_view.dart';
import 'package:idoo/app/modules/landing/bindings/landing_binding.dart';

import '../modules/auth_modules/login/bindings/login_binding.dart';
import '../modules/auth_modules/login/views/login_view.dart';
import '../modules/auth_modules/otp/bindings/otp_binding.dart';
import '../modules/auth_modules/otp/views/otp_view.dart';
import '../modules/auth_modules/register/bindings/register_binding.dart';
import '../modules/auth_modules/register/views/register_view.dart';
import '../modules/home_modules/e_wallet_modules/e_wallet_detail/bindings/e_wallet_detail_binding.dart';
import '../modules/home_modules/e_wallet_modules/e_wallet_detail/views/e_wallet_detail_view.dart';
import '../modules/history_modules/history/bindings/history_binding.dart';
import '../modules/history_modules/history/views/history_view.dart';
import '../modules/history_modules/history_detail/bindings/history_detail_binding.dart';
import '../modules/history_modules/history_detail/views/history_detail_view.dart';
import '../modules/home_modules/bill/bindings/bill_binding.dart';
import '../modules/home_modules/bill/views/bill_view.dart';
import '../modules/home_modules/e_wallet_modules/e_wallet/bindings/e_wallet_binding.dart';
import '../modules/home_modules/e_wallet_modules/e_wallet/views/e_wallet_view.dart';
import '../modules/home_modules/games/bindings/games_binding.dart';
import '../modules/home_modules/games/views/games_view.dart';
import '../modules/home_modules/home/bindings/home_binding.dart';
import '../modules/home_modules/home/views/home_view.dart';
import '../modules/home_modules/installment/bindings/installment_binding.dart';
import '../modules/home_modules/installment/views/installment_view.dart';
import '../modules/home_modules/notification/bindings/notification_binding.dart';
import '../modules/home_modules/notification/views/notification_view.dart';
import '../modules/home_modules/pulsa/bindings/pulsa_binding.dart';
import '../modules/home_modules/pulsa/views/pulsa_view.dart';
import '../modules/home_modules/top_up/bindings/top_up_binding.dart';
import '../modules/home_modules/top_up/views/top_up_view.dart';
import '../modules/home_modules/travel/bindings/travel_binding.dart';
import '../modules/home_modules/travel/views/travel_view.dart';
import '../modules/landing/views/landing_view.dart';
import '../modules/main_modules/about/bindings/about_binding.dart';
import '../modules/main_modules/about/views/about_view.dart';
import '../modules/main_modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/main_modules/dashboard/views/dashboard_view.dart';
import '../modules/profile_modules/edit_password/bindings/edit_password_binding.dart';
import '../modules/profile_modules/edit_password/views/edit_password_view.dart';
import '../modules/profile_modules/edit_pin/bindings/edit_pin_binding.dart';
import '../modules/profile_modules/edit_pin/views/edit_pin_view.dart';
import '../modules/profile_modules/edit_profile/bindings/edit_profile_binding.dart';
import '../modules/profile_modules/edit_profile/views/edit_profile_view.dart';
import '../modules/profile_modules/profile/bindings/profile_binding.dart';
import '../modules/profile_modules/profile/views/profile_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LANDING;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.HISTORY,
      page: () => const HistoryView(),
      binding: HistoryBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT,
      page: () => const AboutView(),
      binding: AboutBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.OTP,
      page: () => const OtpView(),
      binding: OtpBinding(),
    ),
    GetPage(
      name: _Paths.PIN,
      page: () => const PinView(),
      binding: PinBinding(),
    ),
    GetPage(
        name: _Paths.LANDING,
        page: () => const LandingView(),
        binding: LandingBinding()),
    GetPage(
      name: _Paths.EDIT_PROFILE,
      page: () => const EditProfileView(),
      binding: EditProfileBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_PASSWORD,
      page: () => const EditPasswordView(),
      binding: EditPasswordBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_PIN,
      page: () => const EditPinView(),
      binding: EditPinBinding(),
    ),
    GetPage(
      name: _Paths.E_WALLET,
      page: () => const EWalletView(),
      binding: EWalletBinding(),
    ),
    GetPage(
      name: _Paths.PULSA,
      page: () => const PulsaView(),
      binding: PulsaBinding(),
    ),
    GetPage(
      name: _Paths.GAMES,
      page: () => const GamesView(),
      binding: GamesBinding(),
    ),
    GetPage(
      name: _Paths.BILL,
      page: () => const BillView(),
      binding: BillBinding(),
    ),
    GetPage(
      name: _Paths.TRAVEL,
      page: () => const TravelView(),
      binding: TravelBinding(),
    ),
    GetPage(
      name: _Paths.INSTALLMENT,
      page: () => const InstallmentView(),
      binding: InstallmentBinding(),
    ),
    GetPage(
      name: _Paths.TOP_UP,
      page: () => const TopUpView(),
      binding: TopUpBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => const NotificationView(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: _Paths.HISTORY_DETAIL,
      page: () => const HistoryDetailView(),
      binding: HistoryDetailBinding(),
    ),
    GetPage(
      name: _Paths.E_WALLET_DETAIL,
      page: () => const EWalletDetailView(),
      binding: EWalletDetailBinding(),
    ),
  ];
}
