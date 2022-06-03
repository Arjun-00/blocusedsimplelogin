part of 'loginscreen_cubit.dart';

@immutable
abstract class LoginscreenState {

}

class LoginscreenInitial extends LoginscreenState {
  LoginscreenInitial() : super();
}

class LoginSucess extends LoginscreenState{

  String? username;
  String? password;
  LoginSucess(this.username, this.password);
}

class LoginFaild extends LoginscreenState{
  String? error;
  LoginFaild(this.error);
}







