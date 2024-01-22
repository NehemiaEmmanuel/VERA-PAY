import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:nehemia_s_application11/presentation/general_settings_screen/models/general_settings_model.dart';
part 'general_settings_event.dart';
part 'general_settings_state.dart';

/// A bloc that manages the state of a GeneralSettings according to the event that is dispatched to it.
class GeneralSettingsBloc
    extends Bloc<GeneralSettingsEvent, GeneralSettingsState> {
  GeneralSettingsBloc(GeneralSettingsState initialState) : super(initialState) {
    on<GeneralSettingsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    GeneralSettingsInitialEvent event,
    Emitter<GeneralSettingsState> emit,
  ) async {}
}
