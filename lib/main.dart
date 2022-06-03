

import 'package:flutter/material.dart';
import 'package:simple_flutterbloc/firstscreen/firstscre.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_flutterbloc/login/firstscreen.dart';
import 'package:simple_flutterbloc/login/loginscreen_cubit.dart';

import 'firstscreen/firstsn_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginscreenCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.green,backgroundColor: Colors.white,),
        home:  LoginScreen(),
      ),
    );
  }
}
