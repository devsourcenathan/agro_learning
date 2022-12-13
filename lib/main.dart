import 'package:agro_learning/screens/home_screen.dart';
import 'package:agro_learning/screens/iintroduction_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool show = true;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  show = prefs.getBool('ON_BOARDING') ?? true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter On Boarding',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: show ? IntroScreen() : const HomeScreen(),
      home: IntroScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
