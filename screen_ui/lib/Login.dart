import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:screen_ui/ui.dart';
import 'forgot.dart';

class Practise extends StatefulWidget {
  @override
  _PractiseState createState() => _PractiseState();
}

class _PractiseState extends State<Practise> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Column(
          children: [
            Column(
              children: [
                Container(
                  height: 300,
                  width: 300,
                  child: Center(
                    child: Text(
                      'Welcome,',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'Sign in to continue',
                    style: TextStyle(
                      color: Colors.white54,
                    ),
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: 'Email id ',
                      labelStyle: TextStyle(
                        color: Colors.pink,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  fillColor: Colors.pink,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.pink),
                ),
              ),
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              onPressed: () {
                print(nameController.text);
                print(passwordController.text);
              },
              textColor: Colors.white,
              color: Colors.pink,
              child: Text('Login'),
            ),

            InkWell(
              child: Text(
                'Forgot your password ?',
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SIGNUP()),
                );
              },
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: 'I\'m a New User  ',
                          style: TextStyle(
                            color: Colors.white54,
                          )),
                      TextSpan(
                        text: 'Signup',
                        style: TextStyle(
                          color: Colors.pink,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Create()),
                            );
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
