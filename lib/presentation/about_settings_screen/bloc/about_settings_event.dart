// ignore_for_file: must_be_immutable

part of 'about_settings_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AboutSettings widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AboutSettingsEvent extends Equatable {}

/// Event that is dispatched when the AboutSettings widget is first created.
class AboutSettingsInitialEvent extends AboutSettingsEvent {
  @override
  List<Object?> get props => [];
}
