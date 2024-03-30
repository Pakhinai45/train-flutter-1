import 'package:flutter/material.dart';

class Login2Page extends StatefulWidget {
  Login2Page({super.key});

  @override
  State<Login2Page> createState() => _Login2PageState();
}

class _Login2PageState extends State<Login2Page> {
  //State
  String text = 'Hello';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Text(text),
            ),
          ),
          ElevatedButton(
              onPressed: testPress,
              child: const Text('OK'))
        ],
      ),
    );
  }


  void testPress() {
              setState(() {
                text = 'OKK';
              });
            }
}
