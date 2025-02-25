import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250, // Sidebar width
      color: Theme.of(context).primaryColor, // Sidebar background color
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DrawerHeader(
            child: Text("Capybara", style: TextStyle(color: Colors.white, fontSize: 22)),
          ),
          ListTile(
            leading: Icon(Icons.dashboard, color: Colors.white),
            title: Text("Dashboard", style: TextStyle(color: Colors.white)),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.devices, color: Colors.white),
            title: Text("Assets", style: TextStyle(color: Colors.white)),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.business, color: Colors.white),
            title: Text("Vendors", style: TextStyle(color: Colors.white)),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.people, color: Colors.white),
            title: Text("Users", style: TextStyle(color: Colors.white)),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.bar_chart, color: Colors.white),
            title: Text("Reports", style: TextStyle(color: Colors.white)),
            onTap: () {},
          ),
          Spacer(), // Push Settings to the bottom
          ListTile(
            leading: Icon(Icons.settings, color: Colors.white),
            title: Text("Settings", style: TextStyle(color: Colors.white)),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}