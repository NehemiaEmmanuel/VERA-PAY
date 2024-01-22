import 'bloc/confirmation_bloc.dart';
import 'models/confirmation_model.dart';
import 'package:flutter/material.dart';
import 'package:nehemia_s_application11/core/app_export.dart';
import 'package:nehemia_s_application11/widgets/app_bar/appbar_title.dart';
import 'package:nehemia_s_application11/widgets/app_bar/custom_app_bar.dart';
import 'package:nehemia_s_application11/widgets/custom_elevated_button.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ConfirmationBloc>(
      create: (context) => ConfirmationBloc(ConfirmationState(
        confirmationModelObj: ConfirmationModel(),
      ))
        ..add(ConfirmationInitialEvent()),
      child: ConfirmationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConfirmationBloc, ConfirmationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 100.v,
                    width: 292.h,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgShapeCyan400,
                          height: 100.v,
                          width: 200.h,
                          alignment: Alignment.centerLeft,
                        ),
                        _buildAppBar(context),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.h,
                      vertical: 21.v,
                    ),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgUndrawCertificationReIfll,
                          height: 418.v,
                          width: 335.h,
                        ),
                        SizedBox(height: 48.v),
                        CustomElevatedButton(
                          height: 76.v,
                          text: "lbl_back_home".tr,
                          buttonStyle: CustomButtonStyles.fillCyanTL30,
                          buttonTextStyle: CustomTextStyles.headlineSmallBold,
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 71.v,
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_confirmed".tr,
      ),
    );
  }
}
