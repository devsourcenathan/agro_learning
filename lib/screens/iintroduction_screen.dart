import 'package:agro_learning/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:agro_learning/screens/home_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({Key? key}) : super(key: key);

  ///Changed a little bit of buttons styling and text for the thumbnail lol
  ///Thanks for coming here :-)

  final List<PageViewModel> pages = [
    PageViewModel(
        title: 'Une nouvelle vision !',
        body: "Decouvrez une nouvelle manière d'apprendre.",
        // footer: SizedBox(
        //   height: 45,
        //   width: 300,
        //   child: ElevatedButton(
        //     style: ElevatedButton.styleFrom(
        //         backgroundColor: Colors.blue,
        //         shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(18)),
        //         elevation: 1),
        //     onPressed: () {},
        //     child: const Text("Suivant", style: TextStyle(fontSize: 20)),
        //   ),
        // ),
        image: Center(
          child: Image.asset('lib/images/2.png'),
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ))),
    PageViewModel(
        title: 'Agronomie accessible !',
        body: "Les merveilles de l'agronomie sans bouger de votre écran.",
        // footer: SizedBox(
        //   height: 45,
        //   width: 300,
        //   child: ElevatedButton(
        //     style: ElevatedButton.styleFrom(
        //         backgroundColor: Colors.blue,
        //         // primary: Colors.red,
        //         shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(20)),
        //         elevation: 8),
        //     onPressed: () {},
        //     child: const Text(
        //       "Suivant",
        //       style: TextStyle(fontSize: 20),
        //     ),
        //   ),
        // ),
        image: Center(
          child: Image.asset('lib/images/1.png'),
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ))),
    PageViewModel(
      title: 'Allons-y !',
      body: "Déjà prêt à débuter ? Alors réjoignez nous dès maintenant !",
      //
      image: Center(
        child: Image.asset('lib/images/4.png'),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 80, 12, 12),
        child: IntroductionScreen(
          pages: pages,
          dotsDecorator: const DotsDecorator(
            size: Size(10, 10),
            color: Colors.blue,
            activeSize: Size.square(14),
            activeColor: Colors.green,
          ),
          showDoneButton: true,
          done: const Text(
            'Terminer',
            style: TextStyle(fontSize: 20, color: Colors.green),
          ),
          showSkipButton: true,
          skip: const Text(
            'Sauter',
            style: TextStyle(fontSize: 20, color: Colors.deepPurple),
          ),
          showNextButton: true,
          next: const Icon(
            Icons.arrow_forward,
            size: 25,
          ),
          onDone: () => onDone(context),
          curve: Curves.easeInOut,
        ),
      ),
    );
  }

  void onDone(context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ON_BOARDING', false);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }
}
