import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screen/home.dart';
import 'screen/create_account.dart';
import 'widget/bottom_bar.dart';
import 'package:v1/helpers/db_helper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final DatabaseHelper databaseHelper = DatabaseHelper();
  bool? isLogged;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  Future<bool?> _checkFirstTimeUser() async {
    final log = await databaseHelper.getLog();
    return log;
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    return FutureBuilder<bool?>(
      future: _checkFirstTimeUser(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        } else if (snapshot.hasError) {
          // Gérez les erreurs ici
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: Center(
                child: Text('Error: ${snapshot.error}'),
              ),
            ),
          );
        } else {
          if (snapshot.data != null) {
            isLogged = snapshot.data;
          }

          if (isLogged != null) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              routes: {
                '/diving': (context) =>
                    const BottomNavigationBarWidget(page: 0),
                '/center': (context) =>
                    const BottomNavigationBarWidget(page: 1),
                '/member': (context) =>
                    const BottomNavigationBarWidget(page: 2),
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
              home: const Home(),
            );
          } else {
            return const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: CreateAccount(),
            );
          }
        }
      },
    );
  }
}
