import 'package:flutter/material.dart';
import 'screens/dashboard_screen.dart';

class Assignment4App extends StatelessWidget {
  const Assignment4App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 4',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const DashboardScreen(),
    );
  }
}
