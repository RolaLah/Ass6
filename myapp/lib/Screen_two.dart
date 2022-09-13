import 'package:flutter/material.dart';
import 'package:myapp/Screen_one.dart';
import 'package:myapp/main.dart';

class Screen_two extends StatefulWidget {
  const Screen_two({super.key});

  @override
  State<Screen_two> createState() => _Screen_twoState();
}

class _Screen_twoState extends State<Screen_two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome to screen #2",
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
                      return Screen_one();
                    },
                  ));
                });
              }),
              child: Text(
                "Go to screen #1",
                style: TextStyle(
                    color: Color.fromARGB(255, 221, 115, 240), fontSize: 35),
              ))
        ],
      )),
    );
  }
}
