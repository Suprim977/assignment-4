import 'package:flutter/material.dart';
import 'employee_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const EmployeeScreen()),
          ),
          icon: const Icon(Icons.people),
          label: const Text('Employee Screen'),
        ),
      ),
    );
  }
}
