// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'electricitysection_item_model.dart';
import 'insurancesection_item_model.dart';

/// This class defines the variables used in the [pay_bills_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PayBillsModel extends Equatable {
  PayBillsModel({
    this.electricitysectionItemList = const [],
    this.insurancesectionItemList = const [],
  }) {}

  List<ElectricitysectionItemModel> electricitysectionItemList;

  List<InsurancesectionItemModel> insurancesectionItemList;

  PayBillsModel copyWith({
    List<ElectricitysectionItemModel>? electricitysectionItemList,
    List<InsurancesectionItemModel>? insurancesectionItemList,
  }) {
    return PayBillsModel(
      electricitysectionItemList:
          electricitysectionItemList ?? this.electricitysectionItemList,
      insurancesectionItemList:
          insurancesectionItemList ?? this.insurancesectionItemList,
    );
  }

  @override
  List<Object?> get props =>
      [electricitysectionItemList, insurancesectionItemList];
}
