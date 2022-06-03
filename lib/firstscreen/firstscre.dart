import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:simple_flutterbloc/firstscreen/firstsn_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirstScre extends StatelessWidget {

 int value = 0;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FirstsnCubit, FirstsnState>(
      builder: (context, state) {
        if(state is valueChanged){
          value = state.Value;
        }
        return Scaffold(
          appBar: AppBar(title: Text("CUBE"),),
          body: Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("THE COUNTER VALUE IS ",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                Text(value.toString(),style: TextStyle(fontSize: 30),),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          context.read<FirstsnCubit>().increment();
                        },
                        child: Icon(Icons.add),
                      ),
                      SizedBox(width: 10,),
                      FloatingActionButton(
                        onPressed: () {

                          context.read<FirstsnCubit>().decrement();
                        },
                        child: Icon(Icons.remove),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },

    );
  }
}
