import 'package:flutter/material.dart';

import 'package:tasks/ui/gridveiw.dart';

void main() {
  runApp(const Tasks());
}
class Tasks extends StatelessWidget {
  const Tasks({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CustomGridView(),
    );
  }
}
