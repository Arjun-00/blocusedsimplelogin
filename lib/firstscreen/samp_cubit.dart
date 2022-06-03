import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'samp_state.dart';

class SampCubit extends Cubit<SampState> {
  SampCubit() : super(SampInitial());
}
