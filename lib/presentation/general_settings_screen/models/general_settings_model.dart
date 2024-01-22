// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [general_settings_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class GeneralSettingsModel extends Equatable {
  GeneralSettingsModel() {}

  GeneralSettingsModel copyWith() {
    return GeneralSettingsModel();
  }

  @override
  List<Object?> get props => [];
}
