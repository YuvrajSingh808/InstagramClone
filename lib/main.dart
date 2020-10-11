import 'package:flutter/material.dart';
import 'screens/screens.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        
      ),
      // home: LoginScreen(),
      routes: {
    // When navigating to the "/" route, build the FirstScreen widget.
    '/': (context) => LoginScreen(),
    // When navigating to the "/second" route, build the SecondScreen widget.
    '/signup': (context) => SignUp(),
  },
    );
  }
}
