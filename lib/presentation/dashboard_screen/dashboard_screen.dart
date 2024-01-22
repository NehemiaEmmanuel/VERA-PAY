import 'bloc/dashboard_bloc.dart';
import 'models/dashboard_model.dart';
import 'package:flutter/material.dart';
import 'package:nehemia_s_application11/core/app_export.dart';
import 'package:nehemia_s_application11/widgets/app_bar/appbar_title_image.dart';
import 'package:nehemia_s_application11/widgets/app_bar/custom_app_bar.dart';
import 'package:nehemia_s_application11/widgets/custom_elevated_button.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DashboardBloc>(
        create: (context) =>
            DashboardBloc(DashboardState(dashboardModelObj: DashboardModel()))
              ..add(DashboardInitialEvent()),
        child: DashboardScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    _buildWelcomeBackChrissSection(context),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 7.h, vertical: 14.v),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomElevatedButton(
                                  height: 58.v,
                                  text: "msg_add_bank_account".tr,
                                  margin: EdgeInsets.only(left: 10.h),
                                  buttonStyle: CustomButtonStyles.fillCyan,
                                  buttonTextStyle:
                                      CustomTextStyles.titleMedium17,
                                  onPressed: () {
                                    onTapAddBankAccount(context);
                                  }),
                              SizedBox(height: 18.v),
                              Text("msg_banking_and_payments".tr,
                                  style: theme.textTheme.titleMedium),
                              SizedBox(height: 5.v),
                              _buildAddBankAccountSection(context),
                              SizedBox(height: 27.v),
                              _buildEmbraceDigitalSection(context),
                              SizedBox(height: 19.v),
                              CustomImageView(
                                  imagePath: ImageConstant.imgRectangle50,
                                  height: 149.v,
                                  width: 323.h,
                                  radius: BorderRadius.circular(20.h)),
                              SizedBox(height: 21.v),
                              Text("msg_embrace_digital".tr,
                                  style: theme.textTheme.titleSmall)
                            ]))
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildWelcomeBackChrissSection(BuildContext context) {
    return SizedBox(
        height: 257.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 92.h, vertical: 11.v),
                  decoration: AppDecoration.fillCyanDb,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 130.v),
                        Text("msg_welcome_back_chriss".tr,
                            style: CustomTextStyles.titleSmallOnPrimary),
                        SizedBox(height: 5.v),
                        Text("lbl_acount_balance".tr,
                            style: theme.textTheme.titleSmall),
                        SizedBox(height: 11.v),
                        CustomElevatedButton(
                            height: 43.v,
                            text: "lbl_xxxxxxxxxxxx".tr,
                            buttonStyle: CustomButtonStyles.fillGrayE)
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgShape,
              height: 100.v,
              width: 200.h,
              alignment: Alignment.topLeft),
          CustomImageView(
              imagePath: ImageConstant.imgEllipse3,
              height: 80.adaptSize,
              width: 80.adaptSize,
              radius: BorderRadius.circular(40.h),
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 44.v)),
          CustomAppBar(
              height: 34.v,
              centerTitle: true,
              title: AppbarTitleImage(imagePath: ImageConstant.imgSearch))
        ]));
  }

  /// Section Widget
  Widget _buildAddBankAccountSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 4.h, right: 12.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              margin: EdgeInsets.only(top: 2.v),
              padding: EdgeInsets.symmetric(horizontal: 10.h),
              decoration: AppDecoration.fillGrayBf
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgFrameBlack90042x48,
                        height: 42.v,
                        width: 48.h),
                    SizedBox(height: 3.v),
                    Container(
                        width: 42.adaptSize,
                        margin: EdgeInsets.only(right: 2.h),
                        child: Text("lbl_scan_pay".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.titleSmall))
                  ])),
          Spacer(),
          Container(
              margin: EdgeInsets.only(top: 2.v),
              padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 3.v),
              decoration: AppDecoration.fillGrayBf
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 32.v,
                        width: 39.h,
                        margin: EdgeInsets.only(right: 11.h),
                        padding: EdgeInsets.symmetric(vertical: 1.v),
                        decoration: AppDecoration.fillWhiteA.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgSettings,
                            height: 28.v,
                            width: 35.h,
                            alignment: Alignment.topRight)),
                    SizedBox(height: 3.v),
                    SizedBox(
                        width: 61.h,
                        child: Text("lbl_pay_contacts".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.labelLarge)),
                    SizedBox(height: 1.v)
                  ])),
          Padding(
              padding: EdgeInsets.only(left: 18.h),
              child: _buildThirtyOne(context,
                  payPhoneNo: "lbl_bank_transfers".tr,
                  image: ImageConstant.imgFrameBlack90040x40)),
          Padding(
              padding: EdgeInsets.only(left: 27.h, top: 2.v),
              child: _buildThirty(context,
                  userImage: ImageConstant.imgFrame40x40,
                  walletText: "lbl_pay_bills".tr, onTapThirty: () {
                onTapTwentyEight(context);
              }))
        ]));
  }

  /// Section Widget
  Widget _buildEmbraceDigitalSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 4.h, right: 10.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              height: 84.v,
              width: 71.h,
              margin: EdgeInsets.only(top: 4.v),
              child: Stack(alignment: Alignment.bottomRight, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 84.v,
                        width: 71.h,
                        padding: EdgeInsets.symmetric(horizontal: 12.h),
                        decoration: AppDecoration.fillGrayBf.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder20),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgFrame1,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            radius: BorderRadius.circular(10.h),
                            alignment: Alignment.topRight))),
                Align(
                    alignment: Alignment.bottomRight,
                    child: SizedBox(
                        width: 65.h,
                        child: Text("msg_balance_history".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.labelLarge)))
              ])),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 4.v),
              child: _buildThirty(context,
                  userImage: ImageConstant.imgFrame2,
                  walletText: "lbl_wallet".tr)),
          Padding(
              padding: EdgeInsets.only(left: 18.h),
              child: _buildThirtyOne(context,
                  payPhoneNo: "lbl_pay_phone_no".tr,
                  image: ImageConstant.imgFrame3)),
          Container(
              height: 85.v,
              width: 72.h,
              margin: EdgeInsets.only(left: 27.h, top: 3.v),
              child: Stack(alignment: Alignment.centerRight, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 84.v,
                        width: 71.h,
                        decoration: BoxDecoration(
                            color: appTheme.gray400Bf01,
                            borderRadius: BorderRadius.circular(20.h)))),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                        padding: EdgeInsets.only(left: 11.h),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgGrid,
                                  height: 36.v,
                                  width: 23.h,
                                  margin: EdgeInsets.only(left: 14.h)),
                              SizedBox(height: 7.v),
                              SizedBox(
                                  width: 60.h,
                                  child: Text("msg_mobile_recharge".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: theme.textTheme.labelLarge))
                            ])))
              ]))
        ]));
  }

  /// Common widget
  Widget _buildThirty(
    BuildContext context, {
    required String userImage,
    required String walletText,
    Function? onTapThirty,
  }) {
    return GestureDetector(
        onTap: () {
          onTapThirty!.call();
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 1.v),
            decoration: AppDecoration.fillGrayBf
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              CustomImageView(
                  imagePath: userImage,
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  radius: BorderRadius.circular(10.h)),
              SizedBox(height: 21.v),
              Align(
                  alignment: Alignment.centerRight,
                  child: Text(walletText,
                      style: theme.textTheme.labelLarge!
                          .copyWith(color: appTheme.black900)))
            ])));
  }

  /// Common widget
  Widget _buildThirtyOne(
    BuildContext context, {
    required String payPhoneNo,
    required String image,
  }) {
    return SizedBox(
        height: 88.v,
        width: 71.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 1.h, vertical: 6.v),
                  decoration: AppDecoration.fillGrayBf.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30.v),
                        SizedBox(
                            width: 66.h,
                            child: Text(payPhoneNo,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.labelLarge!
                                    .copyWith(color: appTheme.black900)))
                      ]))),
          CustomImageView(
              imagePath: image,
              height: 40.adaptSize,
              width: 40.adaptSize,
              radius: BorderRadius.circular(10.h),
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 14.h))
        ]));
  }

  /// Navigates to the paymentSettingsScreen when the action is triggered.
  onTapAddBankAccount(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.paymentSettingsScreen,
    );
  }

  /// Navigates to the paymentSettingsScreen when the action is triggered.
  onTapTwentySeven(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.paymentSettingsScreen,
    );
  }

  /// Navigates to the payBillsScreen when the action is triggered.
  onTapTwentyEight(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.payBillsScreen,
    );
  }
}
