import '../models/insurancesection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:nehemia_s_application11/core/app_export.dart';

// ignore: must_be_immutable
class InsurancesectionItemWidget extends StatelessWidget {
  InsurancesectionItemWidget(
    this.insurancesectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  InsurancesectionItemModel insurancesectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84.v,
      width: 101.h,
      padding: EdgeInsets.symmetric(
        horizontal: 28.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillGrayB.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: CustomImageView(
        imagePath: insurancesectionItemModelObj?.insuranceImage,
        height: 40.adaptSize,
        width: 40.adaptSize,
        alignment: Alignment.topRight,
      ),
    );
  }
}
