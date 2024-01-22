// ignore_for_file: must_be_immutable

part of 'qr_profile_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///QrProfile widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class QrProfileEvent extends Equatable {}

/// Event that is dispatched when the QrProfile widget is first created.
class QrProfileInitialEvent extends QrProfileEvent {
  @override
  List<Object?> get props => [];
}
