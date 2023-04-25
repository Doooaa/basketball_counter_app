import 'package:cubit_form/cubit_form.dart';
import 'package:basketball_counter_app/cuibt/state_cubit.dart';


                      
class CounterCubit extends Cubit<CounterIcrementState>{   // cubit<dynamic>....==A,Bcounter...c
  CounterCubit(initialState) : super(initialState);
  int teamAPoints = 0;

  int teamBPoints = 0;
   // ignore: non_constant_identifier_names
   void IncrementedA(int NumberBottom)
   { 
        teamAPoints +=NumberBottom; 
        emit(ACounterIcrementState());  
   }
     void IncrementedB(int NumberBottom)
   { 
        teamBPoints +=NumberBottom;
         emit(BCounterIcrementState());     
   }

}