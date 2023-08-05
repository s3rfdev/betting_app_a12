import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import '../res/styles.dart';
import '../widgets/app_bar.dart';
import '../widgets/header.dart';

class InteractivePage extends StatefulWidget {
  const InteractivePage({super.key});

  @override
  State<InteractivePage> createState() => _InteractivePageState();
}

class _InteractivePageState extends State<InteractivePage> {
  int time = 39;
  int top = Random().nextInt(300);
  int left = Random().nextInt(300);
  bool initFlag = true;
  @override
  Widget build(BuildContext context) {
    if (initFlag) {
      initFlag = false;
      Timer.periodic(Duration(seconds: 1), (timer) {
        setState(() {
          time++;
          if (time % 5 == 0) {
            top = Random().nextInt(300);
            left = Random().nextInt(300);
          }
        });
      });
    }
    return Scaffold(
      backgroundColor: blue,
      appBar: MediaQuery.of(context).orientation == Orientation.portrait
          ? MyAppBar(index: 4)
          : null,
      body: Column(
        children: [
          Stack(children: [
            Header(title: 'Interactive       '),
            Positioned(
              right: 10,
              top: 10,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  '1${(time / 60).toInt()}:${(time % 60)}',
                  style: h12w600,
                ),
              ),
            ),
          ]),
          SizedBox(height: 30),
          Expanded(
              child: Stack(
            children: [
              Container(
                width: double.infinity,
                child: Image.asset(
                  'images/pole.png',
                  fit: BoxFit.cover,
                ),
              ),
              AnimatedPositioned(
                top: top.toDouble(),
                left: left.toDouble(),
                duration: Duration(seconds: 1),
                child: Image.asset('images/ball.png'),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
