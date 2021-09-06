import 'package:juanpos/screens/pages/counter/counter_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => CounterViewModel(),
        builder: (context, model, child) => Scaffold(
          body: Container(
            height: 100,
            child: Column(children: [
              Text("NEW SALES"),
            ],),
          ),
        ));
  }
}
