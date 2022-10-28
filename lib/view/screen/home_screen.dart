import 'package:blocc/cubit/counter_cubit.dart';
import 'package:blocc/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    print("//////////////////////////////////////");
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 30,
            ),
            IconButton(
                onPressed: () {
               context.read<countercubit>().decrementCounter();
                },
                icon: Icon(
                  Icons.remove,
                  size: 45,
                )),
            BlocBuilder<countercubit,Counterstate>(builder: (context, state) {
              return Text(
                context.read<countercubit>().counter.toString(),
                style: TextStyle(fontSize: 30),
              );
            }),
            IconButton(
                onPressed: () {
                  context.read<countercubit>().incrementCounter();
                },
                icon: Icon(
                  Icons.add,
                  size: 45,
                )),
            SizedBox(
              width: 30,
            ),
          ],
        ),
      ),
    );
  }
}
