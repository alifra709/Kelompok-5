import 'package:chat_app/pages/Loginpage.dart';
import 'package:chat_app/pages/Registerpage.dart';
import 'package:flutter/material.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  //show login page
  bool showLoginPage = true;

  //toggle antara login dan register
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return Loginpage(
        onTap: togglePages,
      );
    } else {
      return Registerpage(
        onTap: togglePages,
      );
    }
  }
}
