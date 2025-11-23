import 'package:flutter/material.dart';
import '../pages/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  double opacity = 0.0;

  @override
  void initState() {
    super.initState();

    // Fade-in animasi
    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() => opacity = 1);
    });

    // Pindah ke Home setelah 3 detik
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE8F0D3),
      body: Stack(
        children: [
          Center(
            child: AnimatedOpacity(
              duration: const Duration(seconds: 1),
              opacity: opacity,
              child: Column(
                mainAxisSize:
                    MainAxisSize.min, 
                children: [
                  // LOGO
                  Image.asset(
                    "assets/image/logo.png",
                    height: 130,
                    width: 130,
                    fit: BoxFit.contain,
                  ),

                  const SizedBox(height: 4),

                  // NAMA APLIKASI
                  const Text(
                    "GoMini",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff7CA968),
                      letterSpacing: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),

          //Powered by Nemy
          Positioned(
            bottom: 60,
            left: 0,
            right: 0,
            child: AnimatedOpacity(
              duration: const Duration(seconds: 1),
              opacity: opacity,
              child: const Text(
                "Powered by Nemy",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff4C6B3C),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
