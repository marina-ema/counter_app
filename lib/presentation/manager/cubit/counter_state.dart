part of 'counter_cubit.dart';

abstract class CounterState {}

class CounterInitial extends CounterState {}

class CounterValeuChange extends CounterState {
  final int count;

  CounterValeuChange({required this.count});
}
