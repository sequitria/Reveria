import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SizedBox(
              height: 50,
              width: 50,
              child: GestureDetector(
                  onTap: () {

                  },
                  child: Image(image: AssetImage('lib/Assets/images/google.png')))),
        ),
      ),
    );
  }
}
