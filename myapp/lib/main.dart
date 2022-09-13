import 'dart:html';
import 'package:myapp/Screen_one.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Screen_two.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (() {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Screen_one();
                      },
                    ));
                  });
                }),
                child: Text(
                  "Go to screen #1",
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
        ),
      ),
    );
  }
}
