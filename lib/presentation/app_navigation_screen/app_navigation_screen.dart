import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:nehemia_s_application11/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "QR PROFILE".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.qrProfileScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "SPLASH SCREEN".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.splashScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "REGISTARTION".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.registartionScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "LOG IN".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.logInScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "FORGOT PASSWORD".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.forgotPasswordScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "VERIFY EMAIL".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.verifyEmailScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "DASHBOARD".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.dashboardScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "PAY BILLS".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.payBillsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "PAYMENT SETTINGS".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.paymentSettingsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "GENERAL SETTINGS".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.generalSettingsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "PROFILE SEETINGS".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileSeetingsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "ABOUT SETTINGS".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.aboutSettingsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "CONFIRMATION".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.confirmationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "HISTORY".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.historyScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
