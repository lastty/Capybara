import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _apiResponse = "Fetching...";

  @override
  void initState() {
    super.initState();
    fetchAPI();
  }

  Future<void> fetchAPI() async {
    try {
      final response = await http.get(Uri.parse('http://localhost:5001'));
      if (response.statusCode == 200) {
        setState(() {
          _apiResponse = response.body;
        });
      } else {
        setState(() {
          _apiResponse = "Error: ${response.statusCode}";
        });
      }
    } catch (e) {
      setState(() {
        _apiResponse = "Failed to connect!";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Capybara App')),
        body: Center(child: Text(_apiResponse)),
      ),
    );
  }
}