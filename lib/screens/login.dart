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
  void initState() {
    if (emailController.text.isEmpty && passwordController.text.isEmpty) {
      isTextFieldsFilled = false;
      print('false');
    } else
      isTextFieldsFilled = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Instagram'),
            SizedBox(
              height: 40,
            ),
            TextFormField(
              controller: emailController,
              // initialValue: "",
              decoration: InputDecoration(
                filled: true,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                labelText: 'Phone number, email or username',
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              // on
            ),
            SizedBox(
              height: 12,
            ),
            TextFormField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                filled: true,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                labelText: 'Password',
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              // on
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 45,
              child: FlatButton(
                disabledColor: Colors.blue[100],
                onPressed: onpress(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Log In',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                color: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
            )
          ],
        ),
      ),
    );
  }
  Function onpress(){
    if (isTextFieldsFilled) {
      return (){
        print('hello');
      };
    } else {
      return null;
    }
  }
}
