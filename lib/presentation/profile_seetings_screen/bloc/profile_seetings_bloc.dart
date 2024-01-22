import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:nehemia_s_application11/presentation/profile_seetings_screen/models/profile_seetings_model.dart';
part 'profile_seetings_event.dart';
part 'profile_seetings_state.dart';

/// A bloc that manages the state of a ProfileSeetings according to the event that is dispatched to it.
class ProfileSeetingsBloc
    extends Bloc<ProfileSeetingsEvent, ProfileSeetingsState> {
  ProfileSeetingsBloc(ProfileSeetingsState initialState) : super(initialState) {
    on<ProfileSeetingsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileSeetingsInitialEvent event,
    Emitter<ProfileSeetingsState> emit,
  ) async {
    emit(state.copyWith(
      nameController: TextEditingController(),
      emailController: TextEditingController(),
      phoneController: TextEditingController(),
    ));
  }
}
