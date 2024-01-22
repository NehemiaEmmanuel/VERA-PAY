// ignore_for_file: must_be_immutable

part of 'profile_seetings_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileSeetings widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileSeetingsEvent extends Equatable {}

/// Event that is dispatched when the ProfileSeetings widget is first created.
class ProfileSeetingsInitialEvent extends ProfileSeetingsEvent {
  @override
  List<Object?> get props => [];
}
