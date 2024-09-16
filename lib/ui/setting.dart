import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final TextEditingController number1 = TextEditingController();

  final TextEditingController number2 = TextEditingController();

  int? result;

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "pleas enter your name";
                }
                return null;
              },
              controller: number1,
              decoration: const InputDecoration(
                label: Text("user name"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "pleas enter your name";
                }
                return null;
              },
              controller: number2,
              decoration: const InputDecoration(
                label: Text("password"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {});
                if (formkey.currentState!.validate()) {
                  if (int.parse(number1.text) | int.parse(number2.text) <= 10) {
                    setState(() {});
                    result = int.parse(number1.text) + int.parse(number2.text);
                  }
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
              ),
              child: const Text(
                "Sum",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text("result : $result ")
          ],
        ),
      ),
    ));
  }
}
