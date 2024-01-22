// ignore_for_file: must_be_immutable

part of 'about_settings_bloc.dart';

/// Represents the state of AboutSettings in the application.
class AboutSettingsState extends Equatable {
  AboutSettingsState({this.aboutSettingsModelObj});

  AboutSettingsModel? aboutSettingsModelObj;

  @override
  List<Object?> get props => [
        aboutSettingsModelObj,
      ];
  AboutSettingsState copyWith({AboutSettingsModel? aboutSettingsModelObj}) {
    return AboutSettingsState(
      aboutSettingsModelObj:
          aboutSettingsModelObj ?? this.aboutSettingsModelObj,
    );
  }
}
