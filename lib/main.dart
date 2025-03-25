import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reveria/UI/auth/login_page.dart';


void main() {
  runApp(ProviderScope(child: Reveria()));
}

// For finding DB:
// void _printDbPath() async {
//   final dir = await getApplicationDocumentsDirectory();
//   print('DATABASE PATH: ${p.join(dir.path, 'dream_mapper.sqlite')}');
// }

class Reveria extends StatelessWidget {
  const Reveria({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}