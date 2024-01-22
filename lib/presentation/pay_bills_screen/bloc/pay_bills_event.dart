// ignore_for_file: must_be_immutable

part of 'pay_bills_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PayBills widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PayBillsEvent extends Equatable {}

/// Event that is dispatched when the PayBills widget is first created.
class PayBillsInitialEvent extends PayBillsEvent {
  @override
  List<Object?> get props => [];
}
