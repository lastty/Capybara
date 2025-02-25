import 'package:flutter/material.dart';
import '../utils/theme.dart'; // Import Theme for Styling

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250, // Sidebar width
      decoration: AppTheme.sidebarDecoration, // Apply Sidebar Gradient
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20), // Spacing
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Capybara App",
              style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20), // Spacing

          // Sidebar Menu Items
          _buildSidebarItem(Icons.dashboard, "Dashboard"),
          _buildSidebarItem(Icons.computer, "Assets"),
          _buildSidebarItem(Icons.people, "Users"),
          _buildSidebarItem(Icons.business, "Vendors"),
          _buildSidebarItem(Icons.bar_chart, "Reports"),

          Spacer(), // Pushes settings & profile to the bottom
          _buildSidebarItem(Icons.settings, "Settings"),
          _buildSidebarItem(Icons.person, "Profile"),
        ],
      ),
    );
  }

  Widget _buildSidebarItem(IconData icon, String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          Icon(icon, color: Colors.white),
          SizedBox(width: 10),
          Text(title, style: TextStyle(color: Colors.white, fontSize: 16)),
        ],
      ),
    );
  }
}