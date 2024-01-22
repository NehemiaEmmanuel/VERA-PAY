import 'bloc/general_settings_bloc.dart';
import 'models/general_settings_model.dart';
import 'package:flutter/material.dart';
import 'package:nehemia_s_application11/core/app_export.dart';

class GeneralSettingsScreen extends StatelessWidget {
  const GeneralSettingsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<GeneralSettingsBloc>(
        create: (context) => GeneralSettingsBloc(GeneralSettingsState(
            generalSettingsModelObj: GeneralSettingsModel()))
          ..add(GeneralSettingsInitialEvent()),
        child: GeneralSettingsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GeneralSettingsBloc, GeneralSettingsState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildSettingsStack(context),
                        SizedBox(height: 55.v),
                        Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgFrame11,
                                  height: 30.adaptSize,
                                  width: 30.adaptSize,
                                  margin: EdgeInsets.only(bottom: 2.v)),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtProfileSettings(context);
                                  },
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 9.h),
                                      child: Text("msg_profile_settings".tr,
                                          style: theme.textTheme.titleLarge)))
                            ])),
                        SizedBox(height: 30.v),
                        Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgFrameBlack90024x24,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      margin: EdgeInsets.only(bottom: 5.v)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 15.h),
                                      child: Text("msg_notifications_and".tr,
                                          style: theme.textTheme.titleLarge))
                                ])),
                        SizedBox(height: 47.v),
                        Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgFrame24x24,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      margin: EdgeInsets.only(bottom: 7.v)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 15.h),
                                      child: Text("msg_privacy_security".tr,
                                          style: theme.textTheme.titleLarge))
                                ])),
                        SizedBox(height: 50.v),
                        Divider(endIndent: 25.h),
                        SizedBox(height: 57.v),
                        Padding(
                            padding: EdgeInsets.only(left: 9.h),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgFrame12,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      margin: EdgeInsets.only(bottom: 5.v)),
                                  GestureDetector(
                                      onTap: () {
                                        onTapTxtAbout(context);
                                      },
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 16.h),
                                          child: Text("lbl_about".tr,
                                              style:
                                                  theme.textTheme.titleLarge)))
                                ])),
                        SizedBox(height: 44.v),
                        Padding(
                            padding: EdgeInsets.only(left: 9.h),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgFrame13,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      margin: EdgeInsets.only(bottom: 7.v)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 16.h),
                                      child: Text("msg_help_feedback".tr,
                                          style: theme.textTheme.titleLarge))
                                ])),
                        SizedBox(height: 42.v),
                        Padding(
                            padding: EdgeInsets.only(left: 9.h),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgFrame14,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      margin: EdgeInsets.only(bottom: 5.v)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 16.h),
                                      child: Text("lbl_sign_out".tr,
                                          style: theme.textTheme.titleLarge))
                                ])),
                        SizedBox(height: 26.v),
                        Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgFrame15,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      margin: EdgeInsets.only(
                                          top: 1.v, bottom: 4.v)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 13.h),
                                      child: Text("lbl_faqs".tr,
                                          style: theme.textTheme.titleLarge))
                                ])),
                        SizedBox(height: 5.v)
                      ]))));
    });
  }

  /// Section Widget
  Widget _buildSettingsStack(BuildContext context) {
    return SizedBox(
        height: 168.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 144.h, vertical: 9.v),
                  decoration: AppDecoration.fillCyanDb,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 113.v),
                        Text("lbl_settings".tr,
                            style: CustomTextStyles.headlineSmallBold)
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgShape,
              height: 100.v,
              width: 200.h,
              alignment: Alignment.topLeft),
          CustomImageView(
              imagePath: ImageConstant.imgFrameBlack90030x30,
              height: 50.adaptSize,
              width: 50.adaptSize,
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(bottom: 48.v))
        ]));
  }

  /// Navigates to the profileSeetingsScreen when the action is triggered.
  onTapTxtProfileSettings(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileSeetingsScreen,
    );
  }

  /// Navigates to the aboutSettingsScreen when the action is triggered.
  onTapTxtAbout(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.aboutSettingsScreen,
    );
  }
}
