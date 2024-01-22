import 'bloc/splash_bloc.dart';
import 'models/splash_model.dart';
import 'package:flutter/material.dart';
import 'package:nehemia_s_application11/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
        create: (context) =>
            SplashBloc(SplashState(splashModelObj: SplashModel()))
              ..add(SplashInitialEvent()),
        child: SplashScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashBloc, SplashState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    _buildSplashScreenStack(context),
                    SizedBox(height: 10.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgUndrawHappyAn,
                        height: 312.v,
                        width: 301.h),
                    SizedBox(height: 82.v),
                    Text("msg_safe_and_trustworthy".tr,
                        style: CustomTextStyles.headlineSmallCyan600),
                    SizedBox(height: 53.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgOffer,
                        height: 82.v,
                        width: 91.h),
                    SizedBox(height: 5.v)
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildSplashScreenStack(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
            height: 137.v,
            width: 318.h,
            child: Stack(alignment: Alignment.bottomRight, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgShapeCyan400,
                  height: 100.v,
                  width: 200.h,
                  alignment: Alignment.topLeft),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Text("lbl_vera_pay".tr,
                      style: theme.textTheme.displayMedium))
            ])));
  }
}
