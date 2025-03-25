import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reveria/Providers/auth/google_auth_provider.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SizedBox(
              height: 50,
              width: 50,
              child: GestureDetector(
                  onTap: () async {
                    // final googleAuth = ref.read(googleAuthProvider);
                    // final user = await googleAuth.signInWithGoogle();
                  },
                  child: Image(
                      image: AssetImage('lib/Assets/images/google.png')))),
        ),
      ),
    );
  }
}
