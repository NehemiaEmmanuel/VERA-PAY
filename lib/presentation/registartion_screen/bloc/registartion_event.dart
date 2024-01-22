// ignore_for_file: must_be_immutable

part of 'registartion_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Registartion widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RegistartionEvent extends Equatable {}

/// Event that is dispatched when the Registartion widget is first created.
class RegistartionInitialEvent extends RegistartionEvent {
  @override
  List<Object?> get props => [];
}
