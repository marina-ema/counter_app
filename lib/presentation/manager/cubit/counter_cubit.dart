import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int counter = 0;
  void increament() {
    counter++;
    emit(CounterValeuChange(count: counter));
  }

  void decreament() {
    counter--;
    emit(CounterValeuChange(count: counter));
  }
}
