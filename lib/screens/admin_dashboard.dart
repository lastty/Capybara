import 'package:flutter/material.dart';
import '../widgets/sidebar.dart'; // Import Sidebar

class AdminDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Sidebar(), // Sidebar on the left
          Expanded(
            child: Container(
              color: Colors.grey[100], // Light background
              padding: EdgeInsets.all(20), // Add padding
              child: Center(
                child: Text(
                  "Welcome to Admin Dashboard",
                  style: Theme.of(context).textTheme.headlineMedium, // Use Theme Text
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}