// ignore_for_file: must_be_immutable

part of 'general_settings_bloc.dart';

/// Represents the state of GeneralSettings in the application.
class GeneralSettingsState extends Equatable {
  GeneralSettingsState({this.generalSettingsModelObj});

  GeneralSettingsModel? generalSettingsModelObj;

  @override
  List<Object?> get props => [
        generalSettingsModelObj,
      ];
  GeneralSettingsState copyWith(
      {GeneralSettingsModel? generalSettingsModelObj}) {
    return GeneralSettingsState(
      generalSettingsModelObj:
          generalSettingsModelObj ?? this.generalSettingsModelObj,
    );
  }
}
