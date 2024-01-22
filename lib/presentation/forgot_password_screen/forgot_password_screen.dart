import 'bloc/forgot_password_bloc.dart';
import 'models/forgot_password_model.dart';
import 'package:flutter/material.dart';
import 'package:nehemia_s_application11/core/app_export.dart';
import 'package:nehemia_s_application11/widgets/custom_elevated_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ForgotPasswordBloc>(
        create: (context) => ForgotPasswordBloc(
            ForgotPasswordState(forgotPasswordModelObj: ForgotPasswordModel()))
          ..add(ForgotPasswordInitialEvent()),
        child: ForgotPasswordScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgShapeCyan400,
                        height: 100.v,
                        width: 200.h,
                        alignment: Alignment.centerLeft),
                    CustomImageView(
                        imagePath: ImageConstant.imgUndrawForgotP,
                        height: 210.v,
                        width: 279.h),
                    SizedBox(height: 21.v),
                    Text("lbl_forgot_password".tr,
                        style: CustomTextStyles.headlineSmall25),
                    SizedBox(height: 36.v),
                    Container(
                        width: 317.h,
                        margin: EdgeInsets.only(left: 37.h, right: 36.h),
                        child: Text("msg_please_enter_your".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.titleMediumSemiBold18)),
                    SizedBox(height: 43.v),
                    CustomElevatedButton(
                        height: 58.v,
                        text: "lbl_xyz_email_com".tr,
                        margin: EdgeInsets.symmetric(horizontal: 12.h),
                        buttonStyle: CustomButtonStyles.fillGrayBfTL29),
                    SizedBox(height: 49.v),
                    CustomElevatedButton(
                        text: "lbl_send_email".tr,
                        margin: EdgeInsets.symmetric(horizontal: 12.h)),
                    SizedBox(height: 61.v),
                    GestureDetector(
                        onTap: () {
                          onTapTxtDonthaveanaccount(context);
                        },
                        child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "msg_don_t_have_an_account2".tr,
                                  style: CustomTextStyles.bodyLargeff000000),
                              TextSpan(
                                  text: "lbl_sign_up".tr,
                                  style: CustomTextStyles.titleMediumff079aae)
                            ]),
                            textAlign: TextAlign.left)),
                    SizedBox(height: 5.v)
                  ]))));
    });
  }

  /// Navigates to the registartionScreen when the action is triggered.
  onTapTxtDonthaveanaccount(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.registartionScreen,
    );
  }
}
