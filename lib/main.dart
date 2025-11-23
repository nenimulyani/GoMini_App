import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Go Mini App',
      theme: ThemeData(
        primaryColor: const Color(0xff7CA968),
        scaffoldBackgroundColor: const Color(0xffE8F0D3),
        fontFamily: 'Poppins',
        useMaterial3: false,
      ),
      home: const SplashScreen(),
    );
  }
}
