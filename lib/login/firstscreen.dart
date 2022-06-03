import 'package:flutter/material.dart';
import 'package:simple_flutterbloc/login/loginscreen_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController username =  TextEditingController();
    TextEditingController password = TextEditingController();
    String? uname;
    String? upass;
    
    return Scaffold(
      body: BlocConsumer<LoginscreenCubit,LoginscreenState>(
        listener: (context,state){
          if(state is LoginSucess){
             uname = state.username;
             upass = state.password;
          }
          else if(state is LoginFaild){
             _showDialogview(context, state.error!);
          }
        },
        builder: (context,state){
          return Center(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("LOGIN",style: TextStyle(fontSize: 30),),
                  SizedBox(height: 60,),
                  TextField(
                    decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                        hintText: "USERNAME"
                    ),
                    controller: username,
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "PASSWORD",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    ),
                    controller: password,
                  ),
                  SizedBox(height: 20,),
                  RaisedButton(
                    padding: EdgeInsets.only(left: 30,right: 30,top: 10,bottom: 10),
                    child: Text("SAVE"),
                    onPressed: (){
                      BlocProvider.of<LoginscreenCubit>(context).validation(username.text, password.text);
                    },
                  ),

                  SizedBox(height:50,),
                  uname !=null ? Text("USERNAME IS :" +uname.toString()) : Container(),
                  SizedBox(height:8,),
                  Text("USERNAME IS :" +upass.toString()),

                ],
              ),
            ),
          );
        },
        buildWhen: (previousState,state){
          return state is LoginSucess;
        },
      ),
    );
  }

  void _showDialogview(BuildContext context,String message){
    showDialog(
      context: context,
      builder: (context){
        return Dialog(
          child: Container(
            padding: EdgeInsets.all(10),
            height: 200,
            color: Colors.green,
            child: Center(
              child: Text(message.toString(),style: TextStyle(fontSize: 20),),
            ),
          ),
        );
      }
    );
  }
}
