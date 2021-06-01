import 'package:flutter/material.dart';

class SIGNUP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.arrow_back,
              color: Colors.pink,
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/good.png'),
                ),
              ),
            ),
            Text('Did you forget you\'r Password ? '),
            Text('Dont Worry !'),
            Column(
              children: [
                Text('We will send a verfication code on you\'r email.'),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        labelText: 'Email id ',
                        labelStyle: TextStyle(
                          color: Colors.pink,
                        )),
                  ),
                ),
                // ignore: deprecated_member_use
                RaisedButton(
                  onPressed: () {},
                  child: Icon(Icons.send,
                  color: Colors.white,
                  ),
                  color: Colors.pink,
  
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
