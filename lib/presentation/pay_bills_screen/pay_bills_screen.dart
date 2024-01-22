import '../pay_bills_screen/widgets/electricitysection_item_widget.dart';
import '../pay_bills_screen/widgets/insurancesection_item_widget.dart';
import 'bloc/pay_bills_bloc.dart';
import 'models/electricitysection_item_model.dart';
import 'models/insurancesection_item_model.dart';
import 'models/pay_bills_model.dart';
import 'package:flutter/material.dart';
import 'package:nehemia_s_application11/core/app_export.dart';
import 'package:nehemia_s_application11/widgets/app_bar/appbar_title_image.dart';
import 'package:nehemia_s_application11/widgets/app_bar/custom_app_bar.dart';

class PayBillsScreen extends StatelessWidget {
  const PayBillsScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PayBillsBloc>(
      create: (context) => PayBillsBloc(PayBillsState(
        payBillsModelObj: PayBillsModel(),
      ))
        ..add(PayBillsInitialEvent()),
      child: PayBillsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildPayBillsSection(context),
              Container(
                padding: EdgeInsets.all(14.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildElectricitySection(context),
                    SizedBox(height: 88.v),
                    _buildInsuranceSection(context),
                    SizedBox(height: 87.v),
                    _buildTravelSection(context),
                    SizedBox(height: 81.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 5.h,
                        right: 256.h,
                      ),
                      child: _buildTrainTicketSection(
                        context,
                        image: ImageConstant.imgFrame10,
                        trainTicket: "lbl_movie_ticket".tr,
                      ),
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
  }

  /// Section Widget
  Widget _buildPayBillsSection(BuildContext context) {
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
                horizontal: 143.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.fillCyanDb,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 99.v),
                  Text(
                    "lbl_pay_bills2".tr,
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
              imagePath: ImageConstant.imgVector,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildElectricitySection(BuildContext context) {
    return SizedBox(
      height: 84.v,
      child: BlocSelector<PayBillsBloc, PayBillsState, PayBillsModel?>(
        selector: (state) => state.payBillsModelObj,
        builder: (context, payBillsModelObj) {
          return ListView.separated(
            padding: EdgeInsets.only(left: 5.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 27.h,
              );
            },
            itemCount: payBillsModelObj?.electricitysectionItemList.length ?? 0,
            itemBuilder: (context, index) {
              ElectricitysectionItemModel model =
                  payBillsModelObj?.electricitysectionItemList[index] ??
                      ElectricitysectionItemModel();
              return ElectricitysectionItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildInsuranceSection(BuildContext context) {
    return SizedBox(
      height: 84.v,
      child: BlocSelector<PayBillsBloc, PayBillsState, PayBillsModel?>(
        selector: (state) => state.payBillsModelObj,
        builder: (context, payBillsModelObj) {
          return ListView.separated(
            padding: EdgeInsets.only(left: 5.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 1.h,
              );
            },
            itemCount: payBillsModelObj?.insurancesectionItemList.length ?? 0,
            itemBuilder: (context, index) {
              InsurancesectionItemModel model =
                  payBillsModelObj?.insurancesectionItemList[index] ??
                      InsurancesectionItemModel();
              return InsurancesectionItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTravelSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 13.h),
              decoration: AppDecoration.fillGrayB.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 6.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgAirplane,
                    height: 28.v,
                    width: 34.h,
                  ),
                  SizedBox(height: 25.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "lbl_plane_ticket".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.h),
            child: _buildTrainTicketSection(
              context,
              image: ImageConstant.imgFrame8,
              trainTicket: "lbl_bus_ticket".tr,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: _buildTrainTicketSection(
              context,
              image: ImageConstant.imgFrame9,
              trainTicket: "lbl_train_ticket".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTrainTicketSection(
    BuildContext context, {
    required String image,
    required String trainTicket,
  }) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 2.h),
          decoration: AppDecoration.fillGrayB.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 6.v),
              CustomImageView(
                imagePath: image,
                height: 40.adaptSize,
                width: 40.adaptSize,
                margin: EdgeInsets.only(right: 22.h),
              ),
              SizedBox(height: 13.v),
              Text(
                trainTicket,
                style: theme.textTheme.bodyLarge!.copyWith(
                  color: appTheme.black900,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
