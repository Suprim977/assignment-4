import 'package:flutter/material.dart';
import '../models/employee.dart';

class EmployeeScreen extends StatelessWidget {
  const EmployeeScreen({super.key});

  final List<Employee> employees = const [
    Employee(
      id: 101,
      fullName: 'John Doe',
      gender: 'Male',
      department: 'IT',
      username: 'johnd',
      password: 'pass123',
    ),
    Employee(
      id: 102,
      fullName: 'Jane Smith',
      gender: 'Female',
      department: 'HR',
      username: 'janes',
      password: 'pass456',
    ),
    Employee(
      id: 103,
      fullName: 'Alice Brown',
      gender: 'Female',
      department: 'Finance',
      username: 'aliceb',
      password: 'pass789',
    ),
    Employee(
      id: 104,
      fullName: 'Bob White',
      gender: 'Male',
      department: 'Marketing',
      username: 'bobw',
      password: 'pass000',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Employees'), centerTitle: true),
      body: ListView.separated(
        padding: const EdgeInsets.all(12),
        itemCount: employees.length,
        separatorBuilder: (context, index) =>
            const Divider(height: 20, thickness: 1),
        itemBuilder: (context, index) {
          final emp = employees[index];
          return Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 5,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildInfoRow('Employee ID', emp.id.toString()),
                _buildInfoRow('Full Name', emp.fullName),
                _buildInfoRow('Gender', emp.gender),
                _buildInfoRow('Department', emp.department),
                _buildInfoRow('Username', emp.username),
                _buildInfoRow('Password', emp.password),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        children: [
          Text(
            '$label: ',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          Expanded(child: Text(value, style: const TextStyle(fontSize: 14))),
        ],
      ),
    );
  }
}
