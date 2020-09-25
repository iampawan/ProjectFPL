import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:fplproject/coolors.dart';
import 'package:velocity_x/velocity_x.dart';

final countProvider = StateProvider((ref) => 0);

class RiverPodTestPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final count = watch(countProvider).state;
    return Scaffold(
      backgroundColor: blueish,
      appBar: AppBar(
        title: "Riverpod Sample".text.make(),
      ),
      body: count
          .toString()
          .text
          .xl5
          .bold
          .makeCentered()
          .box
          .square(200)
          .rounded
          .neumorphic(color: blueish, curve: VxCurve.flat)
          .makeCentered(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read(countProvider).state++;
            },
            child: Icon(Icons.add),
          ),
          20.widthBox,
          FloatingActionButton(
            onPressed: () {
              context.read(countProvider).state--;
            },
            child: Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
