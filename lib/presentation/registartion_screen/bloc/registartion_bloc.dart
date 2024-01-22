import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:nehemia_s_application11/presentation/registartion_screen/models/registartion_model.dart';
part 'registartion_event.dart';
part 'registartion_state.dart';

/// A bloc that manages the state of a Registartion according to the event that is dispatched to it.
class RegistartionBloc extends Bloc<RegistartionEvent, RegistartionState> {
  RegistartionBloc(RegistartionState initialState) : super(initialState) {
    on<RegistartionInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RegistartionInitialEvent event,
    Emitter<RegistartionState> emit,
  ) async {
    emit(state.copyWith(
        fullNameController: TextEditingController(),
        emailController: TextEditingController(),
        passwordController: TextEditingController(),
        passwordController1: TextEditingController()));
  }
}
