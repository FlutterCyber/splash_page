import 'package:flutter/material.dart';
import 'package:splash_page/pages/home_page.dart';
import 'package:splash_page/pages/sign_in_page.dart';

class SignUpPage extends StatefulWidget {
  static const String id = "sign_up_page";

  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController firstNameController = new TextEditingController();
  TextEditingController lastNameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController confirmPasswordController = new TextEditingController();

  _doSignUp() {
    String firstname = firstNameController.text;
    String lastName = lastNameController.text;
    String password = passwordController.text;
    String confirmPassword = confirmPasswordController.text;

    if (firstname.isNotEmpty &&
        lastName.isNotEmpty &&
        password.isNotEmpty &&
        confirmPassword.isNotEmpty) {
      Navigator.pushReplacementNamed(context, HomePage.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // instagram yozuvi
              Text(
                'Instagram',
                style: TextStyle(fontSize: 45, fontFamily: 'Billabong'),
              ),
              // first name container
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[200],
                ),
                child: TextField(
                  controller: firstNameController,
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal),
                    ),
                    hintText: "First name",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              // last name container
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[200],
                ),
                child: TextField(
                  controller: lastNameController,
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal),
                    ),
                    hintText: "Last name",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              //password container
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[200],
                ),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal),
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              // confirm password
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[200],
                ),
                child: TextField(
                  controller: confirmPasswordController,
                  obscureText: true,
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal),
                    ),
                    hintText: "Confirm password",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              // sign up button
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                height: 48,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blue,
                ),
                child: FlatButton(
                  onPressed: () {
                    _doSignUp();
                  },
                  child: Text(
                    'Sign up',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              // sign in text
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                height: 48,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, SignInPage.id);
                      },
                      child: Text(
                        "Sign in",
                        style: TextStyle(fontSize: 16, color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
