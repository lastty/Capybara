import 'package:flutter/material.dart';
import 'screens/admin_dashboard.dart'; // ✅ Make sure this import exists

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Capybara App',
      theme: ThemeData.light(),
      home: AdminDashboard(), // ✅ Make sure this class is defined
    );
  }
}