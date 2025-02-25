import 'package:flutter/material.dart';

class AppTheme {
  // 🔹 Sidebar Gradient - Update to Green Theme
  static final BoxDecoration sidebarDecoration = BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Color(0xFF004D40), // Dark Green
        Color(0xFF00796B), // Teal Green
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  );

  // 🔹 Header Gradient - Update for Matching Theme
  static final BoxDecoration headerDecoration = BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Color(0xFF00695C), // Dark Green-Teal
        Color(0xFF00897B), // Slightly lighter Teal
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  );

  // 🔹 Light Theme
  static final ThemeData lightTheme = ThemeData(
    primaryColor: Color(0xFF004D40), // Dark Green as primary color
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(
      headlineLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
      headlineMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
      bodyLarge: TextStyle(fontSize: 16, color: Colors.black87),
      bodyMedium: TextStyle(fontSize: 14, color: Colors.black54),
    ),
  );
}