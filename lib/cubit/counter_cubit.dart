import 'package:blocc/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class countercubit extends Cubit<Counterstate>{
  countercubit():super(Counterinitial());
  int counter = 0;

  incrementCounter() {
          counter++;
    print(counter);
    emit(Counterincrement());
  }

  decrementCounter() {
      counter--;
    print(counter);
    emit(Counterdecrement());
  }


}