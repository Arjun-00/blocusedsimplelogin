import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'loginscreen_state.dart';

class LoginscreenCubit extends Cubit<LoginscreenState> {
  LoginscreenCubit() : super(LoginscreenInitial());

  void validation(String userna,String passna){
    if(userna.isEmpty && passna.isEmpty){
      emit(LoginFaild("Both UserName AND Password Empty"));
    }else
    if(userna.isEmpty){
      emit(LoginFaild("The UserName is Empty"));
    }else if(passna.isEmpty){
      emit(LoginFaild("The PassWord is Empty"));
    }else{
      emit(LoginSucess(userna, passna));
    }
  }

  // void datas(String  user,String pass){
  //   if(user.isNotEmpty && pass.isNotEmpty){
  //     emit(LoginSucess(user, pass));
  //
  //   }
  // }
}
