import 'package:flutter/material.dart';
import 'package:whatsappnew/pages/ChatPage.dart';
import 'package:whatsappnew/pages/SettingPage.dart';
import 'package:whatsappnew/wedgets/HomePage.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Colors.green,
        ),
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Colors.black,
        ),
      ),
      routes: {
        "/": (context) => HomePage(),
        "SettingPage": (context) => const SettingPage(),
        "ChatPage": (context) => ChatPage(),
      },
    );
  }
}
