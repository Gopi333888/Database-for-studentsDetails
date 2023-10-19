import 'package:flutter/material.dart';
import 'package:studentslist/database/databasesqflite.dart';
import 'package:studentslist/screen/firstscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDatabase();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Students(),
      debugShowCheckedModeBanner: false,
    );
  }
}
