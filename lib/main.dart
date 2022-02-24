import 'package:flutter/material.dart';
import 'screens/main_screen.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Bonito",
      theme: ThemeData(
        backgroundColor: Colors.grey[800],
        primaryColor: Color(0xfffcfcff),
        accentColor: Colors.blueGrey[900],
        cursorColor: Colors.blueGrey[900],
        scaffoldBackgroundColor: Color(0xfffcfcff),
        appBarTheme: AppBarTheme(
          elevation: 0,
          textTheme: TextTheme(
            headline6: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
      home: MainScreen(),
    );
  }
}
