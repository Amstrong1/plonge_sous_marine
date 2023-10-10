import './screen/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:v1/screen/diving.dart';
// import 'package:v1/screen/center.dart';
// import 'package:v1/screen/member.dart';
// import 'package:v1/screen/other.dart';
import 'package:v1/widget/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Activer le mode plein écran
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/diving': (context) => const BottomNavigationBarWidget(page: 0),
        '/center': (context) => const BottomNavigationBarWidget(page: 1),
        '/member': (context) => const BottomNavigationBarWidget(page: 2),
        '/other': (context) => const BottomNavigationBarWidget(page: 3),
      },
      title: 'Plongée',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          color: Color.fromRGBO(19, 69, 106, 1),
        ),
      ),
      home: Home(key: key),
    );
  }
}
