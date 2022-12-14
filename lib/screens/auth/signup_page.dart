import 'package:agro_learning/screens/auth/login_page.dart';
import 'package:agro_learning/screens/home_screen.dart';
import 'package:agro_learning/widgets/my_button.dart';
import 'package:agro_learning/widgets/my_text_field.dart';
import 'package:agro_learning/widgets/square_tile.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});

  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //sign in method
  void signUserIn(context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ),
    );
  }

  //navigate method
  void goTo(context, page) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                const Icon(
                  Icons.school_sharp,
                  color: Colors.deepPurple,
                  size: 70,
                ),

                const SizedBox(
                  height: 20,
                ),
                //welcome

                // Text(
                //   "Bienvenue !!",
                //   style: TextStyle(
                //     color: Colors.grey[700],
                //     fontSize: 18,
                //   ),
                // ),
                // const SizedBox(
                //   height: 20,
                // ),
                //username

                MyTextField(
                  controller: usernameController,
                  hintText: "Nom d'utilisateur",
                  obscureText: false,
                  type: TextInputType.text,
                ),

                const SizedBox(
                  height: 10,
                ),
                //password
                MyTextField(
                  controller: emailController,
                  hintText: "Email",
                  obscureText: true,
                  type: TextInputType.emailAddress,
                ),

                const SizedBox(
                  height: 10,
                ),

                //password
                MyTextField(
                  controller: passwordController,
                  hintText: "Mot de passe",
                  obscureText: true,
                  type: TextInputType.text,
                ),

                const SizedBox(
                  height: 10,
                ),

                //Sign in Button
                MyButton(onTap: () => signUserIn(context), text: "S'inscrire"),

                const SizedBox(
                  height: 10,
                ),

                //continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Ou continuer avec",
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),

                //icons buttons
                const SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SquareTile(imagePath: 'lib/images/google.png'),
                    SizedBox(
                      width: 25,
                    ),
                    SquareTile(imagePath: 'lib/images/apple.png'),
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),

                //register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Deja inscrit ?",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () => goTo(context, LoginPage()),
                      child: const Text(
                        "Connectez vous",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
