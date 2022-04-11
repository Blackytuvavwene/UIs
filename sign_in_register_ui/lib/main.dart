import 'package:flutter/material.dart';
import 'package:sign_in_register_ui/src/view/welcome/welcome.dart';

import 'src/view/signin/signin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Welcome(),
        '/signin': (context) => const SignIn(),
      },
      // home: const Welcome(),
    );
  }
}
