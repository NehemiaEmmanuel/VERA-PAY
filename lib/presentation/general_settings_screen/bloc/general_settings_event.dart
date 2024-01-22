// ignore_for_file: must_be_immutable

part of 'general_settings_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///GeneralSettings widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class GeneralSettingsEvent extends Equatable {}

/// Event that is dispatched when the GeneralSettings widget is first created.
class GeneralSettingsInitialEvent extends GeneralSettingsEvent {
  @override
  List<Object?> get props => [];
}
