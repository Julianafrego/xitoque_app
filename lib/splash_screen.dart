import 'package:flutter/material.dart';
import 'xilofone_screen.dart';
import './mycolors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Inicie o timer de 5 segundos
    Future.delayed(const Duration(seconds: 5), () {
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const XilofoneScreen()),
      );
    });

    return Scaffold(
      backgroundColor: MyColors.laranjaIntro,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/introgif.gif', width: 200, height: 200), // Logo
            const SizedBox(height: 20),
            const Text(
              'XiToque',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
