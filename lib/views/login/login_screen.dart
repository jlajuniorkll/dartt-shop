import 'package:dartt_shop/consts.dart';
import 'package:dartt_shop/views/login/components/body_login.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarLogin(),
      backgroundColor: kPrimaryColor,
      body: const BodyLogin(),
    );
  }

  AppBar appBarLogin() {
    return AppBar(
      title: const Text("Entrar"),
      centerTitle: true,
      elevation: 0,
      titleTextStyle: const TextStyle(
          color: kTextColorAppBar, fontSize: 28.0, fontWeight: FontWeight.w700),
    );
  }
}
