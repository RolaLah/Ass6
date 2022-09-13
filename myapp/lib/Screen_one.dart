import 'dart:html';

import 'package:flutter/material.dart';
import 'package:myapp/Screen_two.dart';
import 'package:myapp/main.dart';

class Screen_one extends StatefulWidget {
  const Screen_one({super.key});

  @override
  State<Screen_one> createState() => _Screen_oneState();
}

class _Screen_oneState extends State<Screen_one> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome to screen #1",
            style: TextStyle(
                color: Color.fromARGB(255, 82, 241, 77), fontSize: 35),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return MyApp();
                  })));
                });
              },
              child: Text(
                "Go to home page :)",
                style: TextStyle(
                    color: Color.fromARGB(255, 221, 115, 240), fontSize: 35),
              )),
          ElevatedButton(
              onPressed: (() {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Screen_two();
                    },
                  ));
                });
              }),
              child: Text(
                "Go to screen #2",
                style: TextStyle(
                    color: Color.fromARGB(255, 221, 115, 240), fontSize: 35),
              ))
        ],
      )),
    );
  }
}
