import 'package:cubit_form/cubit_form.dart';
import 'package:basketball_counter_app/cubit/state_cubit.dart';

class CounterCubit extends Cubit<CounterIcrementState> {
  // cubit<dynamic>....==A,Bcounter...c
  CounterCubit() : super(BCounterIcrementState());
  int teamAPoints = 0;
  int teamBPoints = 0;
  void IncrementCounter(String char, int NumberBottom) {
    if (char == 'A') {
      teamAPoints += NumberBottom;
      emit(ACounterIcrementState());
    } else if (char == 'B')  {
      teamBPoints += NumberBottom;
      emit(BCounterIcrementState());
    }
    else 
    {
      teamAPoints = NumberBottom;
      teamBPoints = NumberBottom;
        emit(CounterResetState());
    }
  }
}
