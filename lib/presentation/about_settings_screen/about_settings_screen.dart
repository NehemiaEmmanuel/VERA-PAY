import 'bloc/about_settings_bloc.dart';
import 'models/about_settings_model.dart';
import 'package:flutter/material.dart';
import 'package:nehemia_s_application11/core/app_export.dart';
import 'package:nehemia_s_application11/widgets/app_bar/appbar_title_image.dart';
import 'package:nehemia_s_application11/widgets/app_bar/custom_app_bar.dart';

class AboutSettingsScreen extends StatelessWidget {
  const AboutSettingsScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AboutSettingsBloc>(
      create: (context) => AboutSettingsBloc(AboutSettingsState(
        aboutSettingsModelObj: AboutSettingsModel(),
      ))
        ..add(AboutSettingsInitialEvent()),
      child: AboutSettingsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AboutSettingsBloc, AboutSettingsState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildAboutStack(context),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.h,
                      vertical: 30.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgFrame16,
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 18.h,
                                top: 9.v,
                              ),
                              child: Text(
                                "msg_terms_of_service".tr,
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 59.v),
                        Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgFrame17,
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 18.h,
                                top: 8.v,
                              ),
                              child: Text(
                                "lbl_privacy_policy".tr,
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 72.v),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgFrame18,
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 18.h,
                                top: 4.v,
                                bottom: 5.v,
                              ),
                              child: Text(
                                "msg_software_licenses".tr,
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 78.v),
                        Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgFrame19,
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 18.h,
                                top: 9.v,
                              ),
                              child: Text(
                                "lbl_version".tr,
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5.v),
                      ],
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
  Widget _buildAboutStack(BuildContext context) {
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
                horizontal: 157.h,
                vertical: 18.v,
              ),
              decoration: AppDecoration.fillCyanDb,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 94.v),
                  Text(
                    "lbl_about".tr,
                    style: CustomTextStyles.headlineSmallBold,
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgShape,
            height: 94.v,
            width: 200.h,
            alignment: Alignment.topLeft,
          ),
          CustomAppBar(
            centerTitle: true,
            title: AppbarTitleImage(
              imagePath: ImageConstant.imgVectorBlack90039x43,
            ),
          ),
        ],
      ),
    );
  }
}
