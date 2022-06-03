import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'firstsn_state.dart';

class FirstsnCubit extends Cubit<FirstsnState> {
  int value = 0;
  FirstsnCubit() : super(FirstsnInitial());

   void increment() {

     emit(valueChanged(value++));
   }
     void decrement() {

       emit(valueChanged(value --));
     }

}
