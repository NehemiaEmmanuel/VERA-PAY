import 'bloc/profile_seetings_bloc.dart';
import 'models/profile_seetings_model.dart';
import 'package:flutter/material.dart';
import 'package:nehemia_s_application11/core/app_export.dart';
import 'package:nehemia_s_application11/widgets/custom_elevated_button.dart';
import 'package:nehemia_s_application11/widgets/custom_text_form_field.dart';

class ProfileSeetingsScreen extends StatelessWidget {
  const ProfileSeetingsScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileSeetingsBloc>(
      create: (context) => ProfileSeetingsBloc(ProfileSeetingsState(
        profileSeetingsModelObj: ProfileSeetingsModel(),
      ))
        ..add(ProfileSeetingsInitialEvent()),
      child: ProfileSeetingsScreen(),
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
              _buildProfileSettings(context),
              SizedBox(height: 8.v),
              SizedBox(
                height: 120.adaptSize,
                width: 120.adaptSize,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse3120x120,
                      height: 120.adaptSize,
                      width: 120.adaptSize,
                      radius: BorderRadius.circular(
                        60.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFrame,
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(
                        right: 4.h,
                        bottom: 10.v,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "lbl_name".tr,
                    style: CustomTextStyles.titleLargeRegular,
                  ),
                ),
              ),
              SizedBox(height: 3.v),
              _buildName(context),
              SizedBox(height: 19.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "lbl_email".tr,
                    style: CustomTextStyles.titleLargeRegular,
                  ),
                ),
              ),
              SizedBox(height: 3.v),
              _buildEmail(context),
              SizedBox(height: 19.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "lbl_phone_no".tr,
                    style: CustomTextStyles.titleLargeRegular,
                  ),
                ),
              ),
              SizedBox(height: 2.v),
              _buildPhone(context),
              SizedBox(height: 47.v),
              _buildSave(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileSettings(BuildContext context) {
    return SizedBox(
      height: 168.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 103.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.fillCyanDb,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 115.v),
                  Text(
                    "msg_profile_settings".tr,
                    style: CustomTextStyles.headlineSmallBold,
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgShape,
            height: 100.v,
            width: 200.h,
            alignment: Alignment.topLeft,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFrameBlack90050x50,
            height: 50.adaptSize,
            width: 50.adaptSize,
            radius: BorderRadius.circular(
              25.h,
            ),
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 54.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.h,
        right: 17.h,
      ),
      child: BlocSelector<ProfileSeetingsBloc, ProfileSeetingsState,
          TextEditingController?>(
        selector: (state) => state.nameController,
        builder: (context, nameController) {
          return CustomTextFormField(
            controller: nameController,
            borderDecoration: TextFormFieldStyleHelper.fillOnPrimaryContainer,
            fillColor: theme.colorScheme.onPrimaryContainer,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.h,
        right: 17.h,
      ),
      child: BlocSelector<ProfileSeetingsBloc, ProfileSeetingsState,
          TextEditingController?>(
        selector: (state) => state.emailController,
        builder: (context, emailController) {
          return CustomTextFormField(
            controller: emailController,
            borderDecoration: TextFormFieldStyleHelper.fillOnPrimaryContainer,
            fillColor: theme.colorScheme.onPrimaryContainer,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPhone(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.h,
        right: 17.h,
      ),
      child: BlocSelector<ProfileSeetingsBloc, ProfileSeetingsState,
          TextEditingController?>(
        selector: (state) => state.phoneController,
        builder: (context, phoneController) {
          return CustomTextFormField(
            controller: phoneController,
            textInputAction: TextInputAction.done,
            borderDecoration: TextFormFieldStyleHelper.fillOnPrimaryContainer,
            fillColor: theme.colorScheme.onPrimaryContainer,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomElevatedButton(
      height: 57.v,
      width: 166.h,
      text: "lbl_save".tr,
      buttonStyle: CustomButtonStyles.fillCyan1,
      buttonTextStyle: theme.textTheme.headlineSmall!,
    );
  }
}
