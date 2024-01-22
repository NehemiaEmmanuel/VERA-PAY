// ignore_for_file: must_be_immutable

part of 'pay_bills_bloc.dart';

/// Represents the state of PayBills in the application.
class PayBillsState extends Equatable {
  PayBillsState({this.payBillsModelObj});

  PayBillsModel? payBillsModelObj;

  @override
  List<Object?> get props => [
        payBillsModelObj,
      ];
  PayBillsState copyWith({PayBillsModel? payBillsModelObj}) {
    return PayBillsState(
      payBillsModelObj: payBillsModelObj ?? this.payBillsModelObj,
    );
  }
}
