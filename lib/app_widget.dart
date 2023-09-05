import 'package:flutter/material.dart';
import 'package:flutter_architecture/modules/home/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: Colors.blue,
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/home",
      routes: {"/home": (context) => const HomePage()},
    );
  }
}
