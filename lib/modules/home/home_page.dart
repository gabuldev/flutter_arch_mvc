import 'package:flutter/material.dart';
import 'package:flutter_architecture/modules/home/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Arch MVC"),
      ),
      body: Center(
        child: Text("My count is ${controller.data.value}"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
