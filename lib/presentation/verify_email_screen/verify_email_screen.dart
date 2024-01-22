import 'bloc/verify_email_bloc.dart';
import 'models/verify_email_model.dart';
import 'package:flutter/material.dart';
import 'package:nehemia_s_application11/core/app_export.dart';
import 'package:nehemia_s_application11/widgets/custom_elevated_button.dart';
import 'package:nehemia_s_application11/widgets/custom_pin_code_text_field.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<VerifyEmailBloc>(
      create: (context) => VerifyEmailBloc(VerifyEmailState(
        verifyEmailModelObj: VerifyEmailModel(),
      ))
        ..add(VerifyEmailInitialEvent()),
      child: VerifyEmailScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildNinetyStack(context),
              SizedBox(height: 17.v),
              Text(
                "msg_verify_your_email".tr,
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 33.v),
              Container(
                width: 307.h,
                margin: EdgeInsets.only(
                  left: 42.h,
                  right: 41.h,
                ),
                child: Text(
                  "msg_please_enter_4_digit".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleMedium19,
                ),
              ),
              SizedBox(height: 32.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 22.h,
                  right: 29.h,
                ),
                child: BlocSelector<VerifyEmailBloc, VerifyEmailState,
                    TextEditingController?>(
                  selector: (state) => state.otpController,
                  builder: (context, otpController) {
                    return CustomPinCodeTextField(
                      context: context,
                      controller: otpController,
                      onChanged: (value) {
                        otpController?.text = value;
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 28.v),
              Text(
                "msg_resend_your_code".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 32.v),
              CustomElevatedButton(
                height: 58.v,
                text: "lbl_verify_code".tr,
                margin: EdgeInsets.only(
                  left: 15.h,
                  right: 9.h,
                ),
                buttonStyle: CustomButtonStyles.fillCyan,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyStack(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 330.v,
        width: 343.h,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgShapeCyan400,
              height: 100.v,
              width: 200.h,
              alignment: Alignment.topLeft,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgUndrawAuthenticationReSvpt,
              height: 273.v,
              width: 295.h,
              alignment: Alignment.bottomRight,
            ),
          ],
        ),
      ),
    );
  }
}
