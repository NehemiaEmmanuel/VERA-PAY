import '../models/electricitysection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:nehemia_s_application11/core/app_export.dart';

// ignore: must_be_immutable
class ElectricitysectionItemWidget extends StatelessWidget {
  ElectricitysectionItemWidget(
    this.electricitysectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ElectricitysectionItemModel electricitysectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.fillGrayB.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      width: 101.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: electricitysectionItemModelObj?.electricity,
            height: 41.v,
            width: 44.h,
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(right: 13.h),
          ),
          SizedBox(height: 1.v),
          Text(
            electricitysectionItemModelObj.electricity1!,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 1.v),
        ],
      ),
    );
  }
}
