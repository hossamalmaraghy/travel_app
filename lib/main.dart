import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_app/screens/phone_field_screen.dart';
import 'package:travel_app/screens/welcome_screen.dart';

void main() {
  runApp(Milia());
}

class Milia extends StatefulWidget {
  const Milia({super.key});

  @override
  State<Milia> createState() => _MiliaState();
}

class _MiliaState extends State<Milia> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(253, 234, 237, 238),
      ),
      initialRoute: '/', // Set the initial route to '/'
      routes: {
        '/': (context) => WelcomeScreen(), // Use / for the WelcomeScreen
        '/phoneField': (context) => PhoneFieldScreen(), // Add this route
      },
    );
  }
}