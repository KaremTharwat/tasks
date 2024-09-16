import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: 16,
      itemBuilder: ((context, index) {
        return const ListTile(
          leading:
              Image(image: AssetImage("assets/image/numbers/number_one.png")),
          title: Text("numbers"),
        );
      }),
    ));
  }
}
