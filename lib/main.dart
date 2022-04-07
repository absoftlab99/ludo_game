import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

void main(){
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text(
            'Ludu Game',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: const MyApp(),
      ),
    )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int DiceLeft = 3;
  int DiceRight = 5;

  get a => DiceLeft;
  get b => DiceRight;
  
  void fun(){
    DiceLeft = Random().nextInt(6)+1;
    DiceRight = Random().nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                height: 100.0,
                width: 360.0,
                margin: EdgeInsets.all(16.0),
                padding: EdgeInsets.all(10.0),
                alignment: Alignment.center,
                color: Colors.red.shade900,
                child: Text(
                  "Total = ${a + b}",
                  style: TextStyle(
                    fontFamily: 'Odia',
                    fontSize: 50.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.red.shade900,
                  height: 100.0,
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.all(16.0),
                  alignment: Alignment.center,
                  child: Text(
                    '$DiceLeft',
                    style: const TextStyle(
                      fontFamily: 'Odia',
                      fontSize: 60.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.red.shade900,
                  height: 100.0,
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.all(16.0),
                  alignment: Alignment.center,
                  child: Text(
                    '$DiceRight',
                    style: const TextStyle(
                      fontFamily: 'Odia',
                      fontSize: 60.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      fun();
                    });
                  },
                  child: Image.asset('images/dice$DiceLeft.png',
                  ),
                ),
              ),
              Expanded(
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      fun();
                    });
                  },
                  child: Image.asset('images/dice$DiceRight.png',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}