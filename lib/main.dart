import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // Access the environment variables
  static const apiUrl = String.fromEnvironment('API_URL', defaultValue: 'Not Found');
  static const apiKey = String.fromEnvironment('API_KEY', defaultValue: 'Not Found');

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dart Define Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dart Define Example'),
        ),
        body: Center(
          child: Text('API URL: $apiUrl\nAPI Key: $apiKey'),
        ),
      ),
    );
  }
}
