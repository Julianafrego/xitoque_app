import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'splash_screen.dart';
import './mycolors.dart';


void main() {
  // a aplicação so rodará na horizontal
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XiToque',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Kablammo',
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            color: MyColors.laranja,
            fontSize: 20,
          ),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
