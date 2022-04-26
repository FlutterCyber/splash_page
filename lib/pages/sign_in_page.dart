import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  static const String id = "sign_in_page";

  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Instagram',
          style: TextStyle(
              color: Colors.white, fontFamily: 'Billabong', fontSize: 35),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Sign In Page",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
