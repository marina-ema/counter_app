import 'package:flutter/material.dart';
import 'package:flutter_application_5/presentation/button.dart';
import 'package:flutter_application_5/presentation/manager/cubit/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text("Counter")),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("My Counter cubit"),
          SizedBox(
            height: 10,
          ),
          BlocBuilder<CounterCubit, CounterState>(
            builder: (context, state) {
              if (state is CounterInitial) {
                return Text("0");
              }
              if (state is CounterValeuChange) {
                return Text(state.count.toString());
              } else {
                return SizedBox();
              }
            },
          )
        ]),
      ),
      floatingActionButton: Butten(),
    );
  }
}
