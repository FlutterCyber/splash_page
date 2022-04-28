import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splash_page/pages/sign_in_page.dart';
import 'package:splash_page/pages/sign_up_page.dart';

class SplashPage extends StatefulWidget {
  static const String id = "splash_page";

  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  bool isLoggedIn = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _myTimer();
  }
  void _myTimer(){
    Timer(Duration(seconds: 3),(){
      if(isLoggedIn==true){
        Navigator.pushReplacementNamed(context, SignInPage.id);
      }else{
        Navigator.pushReplacementNamed(context, SignUpPage.id);
      }

    });
  }
  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Stack(
          children: [
            Center(
              child: Container(
                height: 200,
                width: 200,
                child: Image.asset('assets/images/insta.png'),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Text("From Meta",style: TextStyle(fontSize: 16),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
