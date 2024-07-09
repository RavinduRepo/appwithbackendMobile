import 'package:appwithbackend/create.dart';
import 'package:appwithbackend/fetch.dart';
import 'package:appwithbackend/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/HomeScreen',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        // adding routes
        '/HomeScreen': (context) => const HomeScreen(),
        '/Create': (context) => const CreateData(),
        '/Fetch': (context) => const Fetchdata(),
        // '/Create': (context) => const CreateData(),
    
      },
    );
  }
}
