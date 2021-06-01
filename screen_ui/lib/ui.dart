import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'Login.dart';

class Create extends StatefulWidget {
  @override
  _CreateState createState() => _CreateState();
}

class _CreateState extends State<Create> {
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
                      'Create,',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0,
                      ),
                    ),
                  ),
                ),
                Text(
                  'create account to get started',
                  style: TextStyle(
                    color: Colors.white54,
                  ),
                )
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: ' User name ',
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
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: 'Email Id',
                  labelStyle: TextStyle(color: Colors.pink),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Practise(),
                  ),
                );
              },
              textColor: Colors.white,
              color: Colors.pink,
              child: Text('Create'),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Already a user',
                        style: TextStyle(
                          color: Colors.white54,
                        ),
                      ),
                      TextSpan(
                          text: 'Login',
                          style: TextStyle(
                            color: Colors.pink,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Practise(),
                                ),
                              );
                            }),
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
