import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:vault/pages/auth_page.dart';
import 'package:vault/pages/intro_page.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Set the initial route to '/'
      routes: {
        '/': (context) => IntroPage(), // Define the IntroPage as the root route
        '/auth': (context) => AuthPage(),
      },
    );
  }
}
