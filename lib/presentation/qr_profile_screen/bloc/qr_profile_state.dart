// ignore_for_file: must_be_immutable

part of 'qr_profile_bloc.dart';

/// Represents the state of QrProfile in the application.
class QrProfileState extends Equatable {
  QrProfileState({this.qrProfileModelObj});

  QrProfileModel? qrProfileModelObj;

  @override
  List<Object?> get props => [
        qrProfileModelObj,
      ];
  QrProfileState copyWith({QrProfileModel? qrProfileModelObj}) {
    return QrProfileState(
      qrProfileModelObj: qrProfileModelObj ?? this.qrProfileModelObj,
    );
  }
}
