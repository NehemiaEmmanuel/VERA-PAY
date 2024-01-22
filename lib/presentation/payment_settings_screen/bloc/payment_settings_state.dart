// ignore_for_file: must_be_immutable

part of 'payment_settings_bloc.dart';

/// Represents the state of PaymentSettings in the application.
class PaymentSettingsState extends Equatable {
  PaymentSettingsState({
    this.searchController,
    this.paymentSettingsModelObj,
  });

  TextEditingController? searchController;

  PaymentSettingsModel? paymentSettingsModelObj;

  @override
  List<Object?> get props => [
        searchController,
        paymentSettingsModelObj,
      ];
  PaymentSettingsState copyWith({
    TextEditingController? searchController,
    PaymentSettingsModel? paymentSettingsModelObj,
  }) {
    return PaymentSettingsState(
      searchController: searchController ?? this.searchController,
      paymentSettingsModelObj:
          paymentSettingsModelObj ?? this.paymentSettingsModelObj,
    );
  }
}
