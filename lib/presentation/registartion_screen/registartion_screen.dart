import 'bloc/registartion_bloc.dart';
import 'models/registartion_model.dart';
import 'package:flutter/material.dart';
import 'package:nehemia_s_application11/core/app_export.dart';
import 'package:nehemia_s_application11/core/utils/validation_functions.dart';
import 'package:nehemia_s_application11/widgets/custom_elevated_button.dart';
import 'package:nehemia_s_application11/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegistartionScreen extends StatelessWidget {
  RegistartionScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<RegistartionBloc>(
        create: (context) => RegistartionBloc(
            RegistartionState(registartionModelObj: RegistartionModel()))
          ..add(RegistartionInitialEvent()),
        child: RegistartionScreen());
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
                            child: Column(children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: SizedBox(
                                      height: 119.v,
                                      width: 307.h,
                                      child: Stack(
                                          alignment: Alignment.bottomRight,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgShapeCyan400,
                                                height: 100.v,
                                                width: 200.h,
                                                alignment: Alignment.topLeft),
                                            Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Text(
                                                    "msg_welcome_to_vera_pay"
                                                        .tr,
                                                    style: CustomTextStyles
                                                        .titleLargeSemiBold))
                                          ]))),
                              SizedBox(height: 62.v),
                              _buildFullName(context),
                              SizedBox(height: 34.v),
                              _buildEmail(context),
                              SizedBox(height: 34.v),
                              _buildPassword(context),
                              SizedBox(height: 34.v),
                              _buildPassword1(context),
                              SizedBox(height: 39.v),
                              _buildGetStarted(context),
                              SizedBox(height: 39.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 29.h),
                                      child: Row(children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgFrameBlack90024x25,
                                            height: 24.v,
                                            width: 25.h,
                                            margin:
                                                EdgeInsets.only(bottom: 2.v)),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtLogInWithGoogle(context);
                                            },
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 11.h),
                                                child: Text(
                                                    "msg_log_in_with_google".tr,
                                                    style: CustomTextStyles
                                                        .titleMedium18)))
                                      ]))),
                              SizedBox(height: 36.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 29.h),
                                      child: Row(children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgFrame24x25,
                                            height: 24.v,
                                            width: 25.h,
                                            margin:
                                                EdgeInsets.only(bottom: 3.v)),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtLogInWithFacebook(
                                                  context);
                                            },
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 11.h),
                                                child: Text(
                                                    "msg_log_in_with_facebook"
                                                        .tr,
                                                    style: CustomTextStyles
                                                        .titleMedium18)))
                                      ]))),
                              SizedBox(height: 50.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapTxtAlreadyhavean(context);
                                      },
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 38.h),
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "msg_already_have_an2"
                                                        .tr,
                                                    style: CustomTextStyles
                                                        .bodyLargeff000000),
                                                TextSpan(
                                                    text: "lbl_sign_in".tr,
                                                    style: CustomTextStyles
                                                        .titleMediumff079aae)
                                              ]),
                                              textAlign: TextAlign.left)))),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 53.h, right: 43.h),
        child: BlocSelector<RegistartionBloc, RegistartionState,
                TextEditingController?>(
            selector: (state) => state.fullNameController,
            builder: (context, fullNameController) {
              return CustomTextFormField(
                  controller: fullNameController,
                  hintText: "msg_enter_your_full".tr,
                  validator: (value) {
                    if (!isText(value)) {
                      return "err_msg_please_enter_valid_text".tr;
                    }
                    return null;
                  });
            }));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 53.h, right: 43.h),
        child: BlocSelector<RegistartionBloc, RegistartionState,
                TextEditingController?>(
            selector: (state) => state.emailController,
            builder: (context, emailController) {
              return CustomTextFormField(
                  controller: emailController,
                  hintText: "msg_enter_your_email".tr,
                  textInputType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_email".tr;
                    }
                    return null;
                  });
            }));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 53.h, right: 43.h),
        child: BlocSelector<RegistartionBloc, RegistartionState,
                TextEditingController?>(
            selector: (state) => state.passwordController,
            builder: (context, passwordController) {
              return CustomTextFormField(
                  controller: passwordController,
                  hintText: "msg_enter_your_password".tr,
                  textInputType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value == null ||
                        (!isValidPassword(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_password".tr;
                    }
                    return null;
                  },
                  obscureText: true);
            }));
  }

  /// Section Widget
  Widget _buildPassword1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 53.h, right: 43.h),
        child: BlocSelector<RegistartionBloc, RegistartionState,
                TextEditingController?>(
            selector: (state) => state.passwordController1,
            builder: (context, passwordController1) {
              return CustomTextFormField(
                  controller: passwordController1,
                  hintText: "msg_confirm_your_password".tr,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value == null ||
                        (!isValidPassword(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_password".tr;
                    }
                    return null;
                  },
                  obscureText: true);
            }));
  }

  /// Section Widget
  Widget _buildGetStarted(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_get_started".tr,
        margin: EdgeInsets.symmetric(horizontal: 12.h),
        buttonTextStyle: CustomTextStyles.headlineSmallMedium,
        onPressed: () {
          onTapGetStarted(context);
        });
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  onTapGetStarted(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.dashboardScreen,
    );
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  onTapTxtLogInWithGoogle(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.dashboardScreen,
    );
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  onTapTxtLogInWithFacebook(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.dashboardScreen,
    );
  }

  /// Navigates to the logInScreen when the action is triggered.
  onTapTxtAlreadyhavean(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.logInScreen,
    );
  }
}
