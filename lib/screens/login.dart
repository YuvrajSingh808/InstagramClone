import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isTextFieldsFilled = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height -
                MediaQuery.of(context).padding.top,
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'English',
                  style: TextStyle(fontSize: 14),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Instagram',
                        style: TextStyle(
                            fontFamily: 'Billabong',
                            fontSize: 40,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: emailController,
                        onChanged: (value) {
                          if (emailController.text.length > 0 &&
                              passwordController.text.length > 0) {
                            setState(() {
                              isTextFieldsFilled = true;
                            });
                          } else {
                            setState(() {
                              isTextFieldsFilled = false;
                            });
                          }
                        },
                        decoration: InputDecoration(
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 16),
                          labelText: 'Phone number, email or username',
                          fillColor: Colors.grey[200],
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                        // on
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                        obscureText: _obscureText,
                        controller: passwordController,
                        onChanged: (value) {
                          if (emailController.text.length > 0 &&
                              passwordController.text.length > 0) {
                            setState(() {
                              isTextFieldsFilled = true;
                            });
                          } else {
                            setState(() {
                              isTextFieldsFilled = false;
                            });
                          }
                        },
                        decoration: InputDecoration(
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 16),
                          labelText: 'Password',
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          fillColor: Colors.grey[200],
                          suffixIcon: IconButton(
                            icon: Icon(Icons.remove_red_eye),
                            onPressed: () {
                              setState(() {
                                _obscureText = _obscureText ? false : true;
                              });
                            },
                            color: _obscureText
                                ? Colors.grey[400]
                                : Colors.blueAccent,
                            splashColor: Colors.transparent,
                            splashRadius: 10,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 45,
                        child: FlatButton(
                          disabledColor: Colors.blue[100],
                          onPressed: isTextFieldsFilled ? () {} : null,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Log In',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                          color: Colors.blueAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RichText(
                        text: TextSpan(
                            style: TextStyle(fontSize: 12, color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(text: 'Forgot your login details? '),
                              TextSpan(
                                  text: 'Get help logging in.',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      print('object');
                                    })
                            ]),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: Container(
                              height: 2,
                              color: Colors.grey[400],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              'OR',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              height: 2,
                              color: Colors.grey[400],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.flag,
                              color: Colors.blueAccent,
                            ),
                            Text(
                              'Login with facebook',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        onTap: () {},
                      )
                    ],
                  ),
                ),
                Container(
                  // height: 20,
                  decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                      color: Colors.grey[400],
                    )),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/signup');
                          },
                          child: RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(text: 'Don\'t have an account?'),
                                  TextSpan(
                                      text: ' Sign up',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold))
                                ]),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
