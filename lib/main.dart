//import 'package:agro_learning/screens/home_screen.dart';
import 'package:agro_learning/screens/iintroduction_screen.dart';
import 'package:agro_learning/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

bool show = true;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  show = prefs.getBool('ON_BOARDING') ?? true;

  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agro learning',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: show ? IntroScreen() : LoginPage(),
      //home: IntroScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
