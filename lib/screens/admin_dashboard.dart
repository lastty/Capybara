import 'package:flutter/material.dart';
import '../widgets/sidebar.dart'; // Import Sidebar
import '../utils/theme.dart'; // Import Theme for Styling

class AdminDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // 🔹 HEADER (Gradient Top Bar)
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            decoration: AppTheme.headerDecoration, // Apply gradient background
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Admin Dashboard",
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 20, 
                    fontWeight: FontWeight.bold
                  ),
                ),
                Icon(Icons.settings, color: Colors.white), // Settings Icon
              ],
            ),
          ),

          // 🔹 BODY (Sidebar + Main Content)
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
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
          ),
        ],
      ),
    );
  }
}