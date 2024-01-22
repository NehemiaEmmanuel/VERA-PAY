import 'bloc/payment_settings_bloc.dart';
import 'models/payment_settings_model.dart';
import 'package:flutter/material.dart';
import 'package:nehemia_s_application11/core/app_export.dart';
import 'package:nehemia_s_application11/widgets/app_bar/appbar_title_image.dart';
import 'package:nehemia_s_application11/widgets/app_bar/custom_app_bar.dart';
import 'package:nehemia_s_application11/widgets/custom_search_view.dart';

class PaymentSettingsScreen extends StatelessWidget {
  const PaymentSettingsScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PaymentSettingsBloc>(
      create: (context) => PaymentSettingsBloc(PaymentSettingsState(
        paymentSettingsModelObj: PaymentSettingsModel(),
      ))
        ..add(PaymentSettingsInitialEvent()),
      child: PaymentSettingsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA70001,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _buildPaymentSettingsStack(context),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 17.h,
                  vertical: 35.v,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 11.h,
                        right: 10.h,
                      ),
                      child: BlocSelector<PaymentSettingsBloc,
                          PaymentSettingsState, TextEditingController?>(
                        selector: (state) => state.searchController,
                        builder: (context, searchController) {
                          return CustomSearchView(
                            controller: searchController,
                            hintText: "lbl_search_banks".tr,
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 71.v),
                    _buildCrdbBankRow(context),
                    SizedBox(height: 40.v),
                    _buildAbsaBankRow(context),
                    SizedBox(height: 47.v),
                    _buildBankOfTanzaniaRow(context),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildHdfcBankRow(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentSettingsStack(BuildContext context) {
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
                horizontal: 85.h,
                vertical: 15.v,
              ),
              decoration: AppDecoration.fillCyanDb,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 101.v),
                  Text(
                    "msg_payment_settings".tr,
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
          CustomAppBar(
            centerTitle: true,
            title: AppbarTitleImage(
              imagePath: ImageConstant.imgVectorBlack900,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCrdbBankRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 7.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.fillGray400bf01.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 1.v),
                SizedBox(
                  width: 55.h,
                  child: Text(
                    "lbl_crdb_bank".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 17.h,
              vertical: 3.v,
            ),
            decoration: AppDecoration.fillGray400bf01.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 12.v),
                SizedBox(
                  width: 54.h,
                  child: Text(
                    "lbl_nmb_bank".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAbsaBankRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 7.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 2.v),
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.fillGray400bf01.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 2.v),
                SizedBox(
                  width: 54.h,
                  child: Text(
                    "lbl_absa_bank".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 81.v,
            width: 140.h,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 79.v,
                    width: 140.h,
                    decoration: BoxDecoration(
                      color: appTheme.gray400Bf01.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(
                        20.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: 80.h,
                    margin: EdgeInsets.only(left: 17.h),
                    child: Text(
                      "lbl_access_bank".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBankOfTanzaniaRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 7.h,
        right: 3.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(top: 5.v),
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 4.v,
            ),
            decoration: AppDecoration.fillGray400bf01.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.v),
                SizedBox(
                  width: 99.h,
                  child: Text(
                    "msg_bank_of_tanzania".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 83.v,
            width: 140.h,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 79.v,
                    width: 140.h,
                    decoration: BoxDecoration(
                      color: appTheme.gray400Bf01.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(
                        20.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: 85.h,
                    margin: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "lbl_bank_of_india".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHdfcBankRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 40.h,
        right: 20.h,
        bottom: 26.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 11.v,
              bottom: 7.v,
            ),
            decoration: AppDecoration.fillGray400bf01.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: SizedBox(
              width: 55.h,
              child: Text(
                "lbl_hdfc_bank".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 21.h,
              vertical: 3.v,
            ),
            decoration: AppDecoration.fillGray400b201.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Container(
              width: 69.h,
              margin: EdgeInsets.only(bottom: 11.v),
              child: Text(
                "lbl_equity_bank".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
