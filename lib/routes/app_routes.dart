import 'package:flutter/material.dart';
import 'package:nehemia_s_application11/presentation/qr_profile_screen/qr_profile_screen.dart';
import 'package:nehemia_s_application11/presentation/splash_screen/splash_screen.dart';
import 'package:nehemia_s_application11/presentation/registartion_screen/registartion_screen.dart';
import 'package:nehemia_s_application11/presentation/log_in_screen/log_in_screen.dart';
import 'package:nehemia_s_application11/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:nehemia_s_application11/presentation/verify_email_screen/verify_email_screen.dart';
import 'package:nehemia_s_application11/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:nehemia_s_application11/presentation/pay_bills_screen/pay_bills_screen.dart';
import 'package:nehemia_s_application11/presentation/payment_settings_screen/payment_settings_screen.dart';
import 'package:nehemia_s_application11/presentation/general_settings_screen/general_settings_screen.dart';
import 'package:nehemia_s_application11/presentation/profile_seetings_screen/profile_seetings_screen.dart';
import 'package:nehemia_s_application11/presentation/about_settings_screen/about_settings_screen.dart';
import 'package:nehemia_s_application11/presentation/confirmation_screen/confirmation_screen.dart';
import 'package:nehemia_s_application11/presentation/history_screen/history_screen.dart';
import 'package:nehemia_s_application11/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String qrProfileScreen = '/qr_profile_screen';

  static const String splashScreen = '/splash_screen';

  static const String registartionScreen = '/registartion_screen';

  static const String logInScreen = '/log_in_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String verifyEmailScreen = '/verify_email_screen';

  static const String dashboardScreen = '/dashboard_screen';

  static const String payBillsScreen = '/pay_bills_screen';

  static const String paymentSettingsScreen = '/payment_settings_screen';

  static const String generalSettingsScreen = '/general_settings_screen';

  static const String profileSeetingsScreen = '/profile_seetings_screen';

  static const String aboutSettingsScreen = '/about_settings_screen';

  static const String confirmationScreen = '/confirmation_screen';

  static const String historyScreen = '/history_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        qrProfileScreen: QrProfileScreen.builder,
        splashScreen: SplashScreen.builder,
        registartionScreen: RegistartionScreen.builder,
        logInScreen: LogInScreen.builder,
        forgotPasswordScreen: ForgotPasswordScreen.builder,
        verifyEmailScreen: VerifyEmailScreen.builder,
        dashboardScreen: DashboardScreen.builder,
        payBillsScreen: PayBillsScreen.builder,
        paymentSettingsScreen: PaymentSettingsScreen.builder,
        generalSettingsScreen: GeneralSettingsScreen.builder,
        profileSeetingsScreen: ProfileSeetingsScreen.builder,
        aboutSettingsScreen: AboutSettingsScreen.builder,
        confirmationScreen: ConfirmationScreen.builder,
        historyScreen: HistoryScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
