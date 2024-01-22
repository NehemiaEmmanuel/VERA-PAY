import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:nehemia_s_application11/presentation/qr_profile_screen/models/qr_profile_model.dart';
part 'qr_profile_event.dart';
part 'qr_profile_state.dart';

/// A bloc that manages the state of a QrProfile according to the event that is dispatched to it.
class QrProfileBloc extends Bloc<QrProfileEvent, QrProfileState> {
  QrProfileBloc(QrProfileState initialState) : super(initialState) {
    on<QrProfileInitialEvent>(_onInitialize);
  }

  _onInitialize(
    QrProfileInitialEvent event,
    Emitter<QrProfileState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.registartionScreen,
      );
    });
  }
}
