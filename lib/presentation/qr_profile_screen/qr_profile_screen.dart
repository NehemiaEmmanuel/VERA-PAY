import 'bloc/qr_profile_bloc.dart';
import 'models/qr_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:nehemia_s_application11/core/app_export.dart';
import 'package:nehemia_s_application11/widgets/custom_elevated_button.dart';

class QrProfileScreen extends StatelessWidget {
  const QrProfileScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<QrProfileBloc>(
        create: (context) =>
            QrProfileBloc(QrProfileState(qrProfileModelObj: QrProfileModel()))
              ..add(QrProfileInitialEvent()),
        child: QrProfileScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QrProfileBloc, QrProfileState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildMobileNoSection(context),
                        SizedBox(height: 32.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle23,
                            height: 250.adaptSize,
                            width: 250.adaptSize,
                            alignment: Alignment.center),
                        SizedBox(height: 56.v),
                        _buildShareQRSection(context),
                        SizedBox(height: 51.v),
                        Padding(
                            padding: EdgeInsets.only(left: 13.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgFrameBlack900,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  margin: EdgeInsets.only(bottom: 2.v)),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtPaymentSettings(context);
                                  },
                                  child: Padding(
                                      padding:
                                          EdgeInsets.only(left: 13.h, top: 2.v),
                                      child: Text("msg_payment_settings".tr,
                                          style: theme.textTheme.titleMedium)))
                            ])),
                        SizedBox(height: 18.v),
                        Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgFrameBlack90030x30,
                                  height: 30.adaptSize,
                                  width: 30.adaptSize),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtGeneralSettings(context);
                                  },
                                  child: Padding(
                                      padding:
                                          EdgeInsets.only(left: 10.h, top: 6.v),
                                      child: Text("msg_general_settings".tr,
                                          style: theme.textTheme.titleMedium)))
                            ])),
                        SizedBox(height: 19.v),
                        Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgFrame30x30,
                                      height: 30.adaptSize,
                                      width: 30.adaptSize,
                                      margin: EdgeInsets.only(top: 1.v)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 10.h, bottom: 7.v),
                                      child: Text("msg_call_centre_and".tr,
                                          style: theme.textTheme.titleMedium))
                                ])),
                        SizedBox(height: 5.v)
                      ]))));
    });
  }

  /// Section Widget
  Widget _buildMobileNoSection(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 168.v,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.topLeft, children: [
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 106.h, vertical: 35.v),
                      decoration: AppDecoration.fillCyanDb,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(height: 71.v),
                            Text("lbl_6376864796".tr,
                                style: CustomTextStyles.titleMedium17)
                          ]))),
              CustomImageView(
                  imagePath: ImageConstant.imgShape,
                  height: 100.v,
                  width: 200.h,
                  alignment: Alignment.topLeft),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                      height: 80.adaptSize,
                      width: 80.adaptSize,
                      margin: EdgeInsets.only(left: 49.h, bottom: 25.v),
                      child: Stack(alignment: Alignment.bottomRight, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse3,
                            height: 80.adaptSize,
                            width: 80.adaptSize,
                            radius: BorderRadius.circular(40.h),
                            alignment: Alignment.center),
                        CustomImageView(
                            imagePath: ImageConstant.imgFrame,
                            height: 21.adaptSize,
                            width: 21.adaptSize,
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(right: 2.h, bottom: 7.v))
                      ]))),
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: EdgeInsets.only(right: 75.h),
                      child: Text("msg_mrs_chriss_joseph".tr,
                          style: CustomTextStyles.titleMedium17)))
            ])));
  }

  /// Section Widget
  Widget _buildShareQRSection(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 16.h, right: 13.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomElevatedButton(
                      height: 37.v,
                      width: 155.h,
                      text: "lbl_share_qr".tr,
                      leftIcon: Container(
                          margin: EdgeInsets.only(right: 15.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgTwitter,
                              height: 18.adaptSize,
                              width: 18.adaptSize)),
                      buttonStyle: CustomButtonStyles.fillGrayBf,
                      buttonTextStyle: theme.textTheme.titleSmall!),
                  CustomElevatedButton(
                      height: 36.v,
                      width: 170.h,
                      text: "lbl_download_qr".tr,
                      leftIcon: Container(
                          margin: EdgeInsets.only(right: 16.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgDownload,
                              height: 18.v,
                              width: 20.h)),
                      buttonStyle: CustomButtonStyles.fillGrayBf,
                      buttonTextStyle: theme.textTheme.titleSmall!)
                ])));
  }

  /// Navigates to the paymentSettingsScreen when the action is triggered.
  onTapTxtPaymentSettings(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.paymentSettingsScreen,
    );
  }

  /// Navigates to the generalSettingsScreen when the action is triggered.
  onTapTxtGeneralSettings(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.generalSettingsScreen,
    );
  }
}
