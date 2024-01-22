import 'bloc/history_bloc.dart';
import 'models/history_model.dart';
import 'package:flutter/material.dart';
import 'package:nehemia_s_application11/core/app_export.dart';
import 'package:nehemia_s_application11/widgets/app_bar/appbar_title.dart';
import 'package:nehemia_s_application11/widgets/app_bar/custom_app_bar.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HistoryBloc>(
      create: (context) => HistoryBloc(HistoryState(
        historyModelObj: HistoryModel(),
      ))
        ..add(HistoryInitialEvent()),
      child: HistoryScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HistoryBloc, HistoryState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: 385.h,
              margin: EdgeInsets.only(right: 5.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildNinetyTwo(context),
                  SizedBox(height: 57.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 9.h,
                      right: 6.h,
                    ),
                    child: _buildFiftySix(
                      context,
                      username: "lbl_marry".tr,
                      price: "lbl_5000".tr,
                      time: "lbl_21_00".tr,
                    ),
                  ),
                  SizedBox(height: 44.v),
                  _buildFortySix(context),
                  SizedBox(height: 57.v),
                  _buildFiftyNine(context),
                  SizedBox(height: 57.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 9.h,
                      right: 6.h,
                    ),
                    child: _buildFiftySix(
                      context,
                      username: "lbl_ajay".tr,
                      price: "lbl_23002".tr,
                      time: "lbl_16_00".tr,
                    ),
                  ),
                  SizedBox(height: 50.v),
                  _buildFortyNine(context),
                  SizedBox(height: 50.v),
                  _buildTwentyFour(context),
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
      height: 70.v,
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_history".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyTwo(BuildContext context) {
    return SizedBox(
      height: 145.v,
      width: 380.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgShapeCyan400,
            height: 109.v,
            width: 203.h,
            alignment: Alignment.topLeft,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(
                left: 20.h,
                top: 100.v,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgThumbsUpBlack900,
                    height: 45.v,
                    width: 25.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 3.v,
                      bottom: 5.v,
                    ),
                    child: Text(
                      "lbl_netflix".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 7.v),
                    child: Text(
                      "lbl_200".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 4.v,
                      bottom: 13.v,
                    ),
                    child: Text(
                      "lbl_23_00".tr,
                      style: CustomTextStyles.bodyLarge18,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFortySix(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 9.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrame50x50,
            height: 50.adaptSize,
            width: 50.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30.h,
              bottom: 12.v,
            ),
            child: Text(
              "lbl_spotify".tr,
              style: theme.textTheme.headlineSmall,
            ),
          ),
          Spacer(
            flex: 44,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 7.v,
              bottom: 6.v,
            ),
            child: Text(
              "lbl_200".tr,
              style: theme.textTheme.headlineSmall,
            ),
          ),
          Spacer(
            flex: 55,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 19.v,
            ),
            child: Text(
              "lbl_20_00".tr,
              style: CustomTextStyles.bodyLarge18,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftyNine(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrame20,
            height: 50.adaptSize,
            width: 50.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30.h,
              top: 15.v,
            ),
            child: Text(
              "lbl_apple".tr,
              style: theme.textTheme.headlineSmall,
            ),
          ),
          Spacer(
            flex: 53,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.v,
              bottom: 4.v,
            ),
            child: Text(
              "lbl_200".tr,
              style: theme.textTheme.headlineSmall,
            ),
          ),
          Spacer(
            flex: 46,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 9.v,
              bottom: 15.v,
            ),
            child: Text(
              "lbl_18_00".tr,
              style: CustomTextStyles.bodyLarge18,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyNine(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrame21,
            height: 50.adaptSize,
            width: 50.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30.h,
              top: 9.v,
              bottom: 4.v,
            ),
            child: Text(
              "lbl_skype".tr,
              style: theme.textTheme.headlineSmall,
            ),
          ),
          Spacer(
            flex: 51,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 9.v,
            ),
            child: Text(
              "lbl_200".tr,
              style: theme.textTheme.headlineSmall,
            ),
          ),
          Spacer(
            flex: 48,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 9.v,
              bottom: 13.v,
            ),
            child: Text(
              "lbl_13_00".tr,
              style: CustomTextStyles.bodyLarge18,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyFour(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.h,
        right: 7.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse8,
            height: 50.adaptSize,
            width: 50.adaptSize,
            radius: BorderRadius.circular(
              25.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              top: 8.v,
              bottom: 5.v,
            ),
            child: Text(
              "lbl_shivangi".tr,
              style: theme.textTheme.headlineSmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              top: 10.v,
              bottom: 3.v,
            ),
            child: Text(
              "lbl_900".tr,
              style: theme.textTheme.headlineSmall,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 14.v,
              bottom: 8.v,
            ),
            child: Text(
              "lbl_10_00".tr,
              style: CustomTextStyles.bodyLarge18,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFiftySix(
    BuildContext context, {
    required String username,
    required String price,
    required String time,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse7,
          height: 50.adaptSize,
          width: 50.adaptSize,
          radius: BorderRadius.circular(
            25.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 30.h,
            top: 11.v,
            bottom: 2.v,
          ),
          child: Text(
            username,
            style: theme.textTheme.headlineSmall!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(top: 13.v),
          child: Text(
            price,
            style: theme.textTheme.headlineSmall!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 30.h,
            top: 17.v,
            bottom: 5.v,
          ),
          child: Text(
            time,
            style: CustomTextStyles.bodyLarge18.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
      ],
    );
  }
}
