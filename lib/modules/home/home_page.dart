import 'package:flutter/material.dart';
import 'package:flutter_architecture/modules/home/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Arch MVC"),
      ),
      body: Center(
        child: ValueListenableBuilder(
            valueListenable: controller.valueNotifier,
            builder: (_, count, __) => Text("My count is ${count.value}")),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
