// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [payment_settings_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PaymentSettingsModel extends Equatable {
  PaymentSettingsModel() {}

  PaymentSettingsModel copyWith() {
    return PaymentSettingsModel();
  }

  @override
  List<Object?> get props => [];
}
