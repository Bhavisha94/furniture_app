part of 'payment_cubit.dart';

abstract class PaymentState {}

class PaymentInitial extends PaymentState {}

class PaymentMethod extends PaymentState {
  final int index;
  PaymentMethod({required this.index});
}
