import 'package:flutter/material.dart';


class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.builder(
        itemBuilder:((context, index){
          return const ListTile(
            leading: Image(image: AssetImage("")),
          );
        }
        ),)
    );
  }
}
