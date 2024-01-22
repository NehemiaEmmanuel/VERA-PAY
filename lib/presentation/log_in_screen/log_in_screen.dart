import 'bloc/log_in_bloc.dart';
import 'models/log_in_model.dart';
import 'package:flutter/material.dart';
import 'package:nehemia_s_application11/core/app_export.dart';
import 'package:nehemia_s_application11/core/utils/validation_functions.dart';
import 'package:nehemia_s_application11/widgets/app_bar/appbar_subtitle.dart';
import 'package:nehemia_s_application11/widgets/app_bar/custom_app_bar.dart';
import 'package:nehemia_s_application11/widgets/custom_elevated_button.dart';
import 'package:nehemia_s_application11/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LogInBloc>(
        create: (context) => LogInBloc(LogInState(logInModelObj: LogInModel()))
          ..add(LogInInitialEvent()),
        child: LogInScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            width: double.maxFinite,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildShapeStack(context),
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 12.h, vertical: 20.v),
                                      child: Column(children: [
                                        SizedBox(height: 16.v),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 36.h),
                                            child: BlocSelector<
                                                    LogInBloc,
                                                    LogInState,
                                                    TextEditingController?>(
                                                selector: (state) =>
                                                    state.emailController,
                                                builder:
                                                    (context, emailController) {
                                                  return CustomTextFormField(
                                                      controller:
                                                          emailController,
                                                      hintText:
                                                          "msg_enter_your_email2"
                                                              .tr,
                                                      textInputType:
                                                          TextInputType
                                                              .emailAddress,
                                                      validator: (value) {
                                                        if (value == null ||
                                                            (!isValidEmail(
                                                                value,
                                                                isRequired:
                                                                    true))) {
                                                          return "err_msg_please_enter_valid_email"
                                                              .tr;
                                                        }
                                                        return null;
                                                      },
                                                      borderDecoration:
                                                          TextFormFieldStyleHelper
                                                              .fillGrayBfTL25);
                                                })),
                                        SizedBox(height: 38.v),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 36.h),
                                            child: BlocSelector<
                                                    LogInBloc,
                                                    LogInState,
                                                    TextEditingController?>(
                                                selector: (state) =>
                                                    state.passwordController,
                                                builder: (context,
                                                    passwordController) {
                                                  return CustomTextFormField(
                                                      controller:
                                                          passwordController,
                                                      hintText:
                                                          "msg_confirm_your_password"
                                                              .tr,
                                                      textInputAction:
                                                          TextInputAction.done,
                                                      textInputType:
                                                          TextInputType
                                                              .visiblePassword,
                                                      validator: (value) {
                                                        if (value == null ||
                                                            (!isValidPassword(
                                                                value,
                                                                isRequired:
                                                                    true))) {
                                                          return "err_msg_please_enter_valid_password"
                                                              .tr;
                                                        }
                                                        return null;
                                                      },
                                                      obscureText: true,
                                                      borderDecoration:
                                                          TextFormFieldStyleHelper
                                                              .fillGrayBfTL25);
                                                })),
                                        SizedBox(height: 24.v),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtForgotPassword(context);
                                            },
                                            child: Text(
                                                "lbl_forgot_password".tr,
                                                style: CustomTextStyles
                                                    .titleMediumSemiBold18)),
                                        SizedBox(height: 16.v),
                                        CustomElevatedButton(
                                            text: "lbl_log_in".tr,
                                            buttonTextStyle: CustomTextStyles
                                                .headlineSmallMedium),
                                        SizedBox(height: 19.v),
                                        Container(
                                            height: 75.adaptSize,
                                            width: 75.adaptSize,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 13.h,
                                                vertical: 7.v),
                                            decoration: AppDecoration
                                                .gradientCyanToCyan
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder37),
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgFrameBlack90046x46,
                                                height: 46.adaptSize,
                                                width: 46.adaptSize,
                                                alignment:
                                                    Alignment.topCenter)),
                                        SizedBox(height: 19.v),
                                        Text("msg_biometric_log_in".tr,
                                            style: theme.textTheme.titleLarge),
                                        SizedBox(height: 15.v),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtDonthaveanaccount(
                                                  context);
                                            },
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text:
                                                          "msg_don_t_have_an_account2"
                                                              .tr,
                                                      style: CustomTextStyles
                                                          .bodyLargeff000000),
                                                  TextSpan(
                                                      text: "lbl_sign_up".tr,
                                                      style: CustomTextStyles
                                                          .titleMediumff079aae)
                                                ]),
                                                textAlign: TextAlign.left))
                                      ]))
                                ])))))));
  }

  /// Section Widget
  Widget _buildShapeStack(BuildContext context) {
    return SizedBox(
        height: 301.v,
        width: 339.h,
        child: Stack(alignment: Alignment.bottomRight, children: [
          CustomImageView(
              imagePath: ImageConstant.imgShapeCyan400,
              height: 100.v,
              width: 200.h,
              alignment: Alignment.topLeft),
          CustomImageView(
              imagePath: ImageConstant.imgUndrawSecureLoginPdn4,
              height: 204.v,
              width: 315.h,
              radius: BorderRadius.circular(20.h),
              alignment: Alignment.bottomRight),
          CustomAppBar(
              height: 59.v,
              centerTitle: true,
              title: AppbarSubtitle(text: "lbl_welcome_back".tr))
        ]));
  }

  /// Navigates to the forgotPasswordScreen when the action is triggered.
  onTapTxtForgotPassword(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }

  /// Navigates to the registartionScreen when the action is triggered.
  onTapTxtDonthaveanaccount(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.registartionScreen,
    );
  }
}
