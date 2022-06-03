part of 'firstsn_cubit.dart';

@immutable
abstract class FirstsnState {

}

class FirstsnInitial extends FirstsnState {
  FirstsnInitial(): super();

}

class valueChanged extends FirstsnState{
  int Value;

  valueChanged(this.Value);
}
