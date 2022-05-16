import 'package:flutter/material.dart';
import 'package:mulpageapp/functions/config.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MulPageApp());
}

class MulPageApp extends StatefulWidget {
  const MulPageApp({Key? key}) : super(key: key);

  @override
  State<MulPageApp> createState() => _MulPageAppState();
}

class _MulPageAppState extends State<MulPageApp> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: GoogleFonts.orbitron().fontFamily,
      ),
      themeMode: currentTheme.currentTheme(),
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: GoogleFonts.orbitron().fontFamily),
      routes: {
        '/': (context) => const LoginPage(),
        '/home': ((context) => const HomePage()),
        '/login': (context) => const LoginPage()
      },
    );
  }
}
