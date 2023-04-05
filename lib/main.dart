import 'package:flutter/material.dart';
import 'package:webrequest/apis.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Center(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter the Number",
                  ),
                  keyboardType: TextInputType.number,
                  controller: controller,
                ),
                ElevatedButton(
                  onPressed: () {
                    final number = controller.text;
                    getNumberFact(number: number);
                  },
                  child: const Text("Enter The Number"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
