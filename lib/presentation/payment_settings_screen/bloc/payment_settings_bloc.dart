import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:nehemia_s_application11/presentation/payment_settings_screen/models/payment_settings_model.dart';
part 'payment_settings_event.dart';
part 'payment_settings_state.dart';

/// A bloc that manages the state of a PaymentSettings according to the event that is dispatched to it.
class PaymentSettingsBloc
    extends Bloc<PaymentSettingsEvent, PaymentSettingsState> {
  PaymentSettingsBloc(PaymentSettingsState initialState) : super(initialState) {
    on<PaymentSettingsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PaymentSettingsInitialEvent event,
    Emitter<PaymentSettingsState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
