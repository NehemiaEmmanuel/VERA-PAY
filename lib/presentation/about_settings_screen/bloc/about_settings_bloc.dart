import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:nehemia_s_application11/presentation/about_settings_screen/models/about_settings_model.dart';
part 'about_settings_event.dart';
part 'about_settings_state.dart';

/// A bloc that manages the state of a AboutSettings according to the event that is dispatched to it.
class AboutSettingsBloc extends Bloc<AboutSettingsEvent, AboutSettingsState> {
  AboutSettingsBloc(AboutSettingsState initialState) : super(initialState) {
    on<AboutSettingsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AboutSettingsInitialEvent event,
    Emitter<AboutSettingsState> emit,
  ) async {}
}
