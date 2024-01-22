import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/electricitysection_item_model.dart';
import '../models/insurancesection_item_model.dart';
import 'package:nehemia_s_application11/presentation/pay_bills_screen/models/pay_bills_model.dart';
part 'pay_bills_event.dart';
part 'pay_bills_state.dart';

/// A bloc that manages the state of a PayBills according to the event that is dispatched to it.
class PayBillsBloc extends Bloc<PayBillsEvent, PayBillsState> {
  PayBillsBloc(PayBillsState initialState) : super(initialState) {
    on<PayBillsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PayBillsInitialEvent event,
    Emitter<PayBillsState> emit,
  ) async {
    emit(state.copyWith(
        payBillsModelObj: state.payBillsModelObj?.copyWith(
      electricitysectionItemList: fillElectricitysectionItemList(),
      insurancesectionItemList: fillInsurancesectionItemList(),
    )));
  }

  List<ElectricitysectionItemModel> fillElectricitysectionItemList() {
    return [
      ElectricitysectionItemModel(
          electricity: ImageConstant.imgFrameBlack90041x44,
          electricity1: "Electricity"),
      ElectricitysectionItemModel(
          electricity: ImageConstant.imgFrame4, electricity1: "    Water"),
      ElectricitysectionItemModel(
          electricity: ImageConstant.imgFrame5, electricity1: "Television")
    ];
  }

  List<InsurancesectionItemModel> fillInsurancesectionItemList() {
    return [InsurancesectionItemModel(insuranceImage: ImageConstant.imgFrame6)];
  }
}
