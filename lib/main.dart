import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tasks/ui/bottom_nav.dart';
import 'package:tasks/ui/gridveiw.dart';

void main() {
  runApp(Tasks());
}

class Tasks extends StatefulWidget {
  const Tasks({
    super.key,
  });

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  // int count = 1;
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: CustomGridView()
        // Scaffold(
        //   body: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           FloatingActionButton(
        //             onPressed: () {
        //               setState(() {});
        //               count--;
        //             },
        //             child: Icon(Icons.remove),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(12),
        //             child: Text("$count"),
        //           ),
        //           FloatingActionButton(
        //               onPressed: () {
        //                 setState(() {});
        //                 count++;
        //               },
        //               child: Icon(Icons.add)),
        //         ],
        //       )
        //     ],
        //   ),
        );
  }
}
