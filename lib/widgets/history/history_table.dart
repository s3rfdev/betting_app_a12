import 'dart:math';

import 'package:flutter/material.dart';

class HistoryTable extends StatelessWidget {
  const HistoryTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 7 + 260,
      height: 837,
      child: Stack(
        children: [
          Positioned(
            left: 195,
            top: 0,
            child: Text(
              'All',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontFamily: 'Roboto Condensed',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 149,
            top: 19,
            child: Text(
              'Amount',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontFamily: 'Roboto Condensed',
                fontWeight: FontWeight.w400,
                height: 1.50,
              ),
            ),
          ),
          Positioned(
            left: 213,
            top: 19,
            child: SizedBox(
              width: 7 + 44,
              child: Text(
                'Average',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 51,
            child: SizedBox(
              width: 7 + 98,
              child: Text(
                'Matches played',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 198,
            top: 51,
            child: SizedBox(
              width: 7 + 6,
              child: Text(
                '4',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 83,
            child: SizedBox(
              width: 7 + 43,
              child: Text(
                'Victory',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 162,
            top: 83,
            child: SizedBox(
              width: 7 + 6,
              child: Text(
                Random().nextInt(10).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 225,
            top: 83,
            child: SizedBox(
              width: 9 + 20,
              child: Text(
                Random().nextInt(100).toString() + '',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 115,
            child: Text(
              'Nobody\'s',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontFamily: 'Roboto Condensed',
                fontWeight: FontWeight.w400,
                height: 1.50,
              ),
            ),
          ),
          Positioned(
            left: 162,
            top: 115,
            child: SizedBox(
              width: 7 + 6,
              child: Text(
                Random().nextInt(10).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 228,
            top: 115,
            child: SizedBox(
              width: 10 + 14,
              child: Text(
                Random().nextInt(100).toString() + '%',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 147,
            child: SizedBox(
              width: 7 + 62,
              child: Text(
                'Defeats',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 162,
            top: 147,
            child: SizedBox(
              width: 7 + 6,
              child: Text(
                Random().nextInt(10).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 225,
            top: 147,
            child: SizedBox(
              width: 7 + 20,
              child: Text(
                Random().nextInt(100).toString() + '%',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 179,
            child: SizedBox(
              width: 7 + 90,
              child: Text(
                'Score points',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 162,
            top: 179,
            child: SizedBox(
              width: 7 + 6,
              child: Text(
                Random().nextInt(10).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 225,
            top: 179,
            child: SizedBox(
              width: 7 + 20,
              child: Text(
                Random().nextInt(100).toString() + '%',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 211,
            child: SizedBox(
              width: 7 + 77,
              child: Text(
                'Goals scored',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 156,
            top: 211,
            child: SizedBox(
              width: 7 + 18,
              child: Text(
                Random().nextInt(100).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 222,
            top: 211,
            child: SizedBox(
              width: 7 + 27,
              child: Text(
                Random().nextInt(10).toString() +
                    '.' +
                    Random().nextInt(10).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 243,
            child: SizedBox(
              width: 7 + 107,
              child: Text(
                'Missed goals',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 156,
            top: 243,
            child: SizedBox(
              width: 7 + 18,
              child: Text(
                Random().nextInt(10).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 229,
            top: 243,
            child: SizedBox(
              width: 7 + 12,
              child: Text(
                Random().nextInt(10).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 275,
            child: SizedBox(
              width: 7 + 87,
              child: Text(
                'Ball differential',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 159,
            top: 275,
            child: SizedBox(
              width: 7 + 12,
              child: Text(
                Random().nextInt(10).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 222,
            top: 275,
            child: SizedBox(
              width: 7 + 27,
              child: Text(
                Random().nextInt(10).toString() +
                    '.' +
                    Random().nextInt(10).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 307,
            child: SizedBox(
              width: 7 + 45,
              child: Text(
                'Viewers',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 153,
            top: 307,
            child: SizedBox(
              width: 7 + 24,
              child: Text(
                Random().nextInt(100).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 223,
            top: 307,
            child: SizedBox(
              width: 7 + 24,
              child: Text(
                Random().nextInt(100).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 339,
            child: SizedBox(
              width: 7 + 43,
              child: Text(
                '2x (P/R)',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 148,
            top: 339,
            child: SizedBox(
              width: 7 + 35,
              child: Text(
                Random().nextInt(100).toString() +
                    Random().nextInt(10).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 221,
            top: 339,
            child: SizedBox(
              width: 7 + 29,
              child: Text(
                Random().nextInt(10).toString() +
                    '/' +
                    Random().nextInt(10).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 371,
            child: SizedBox(
              width: 7 + 31,
              child: Text(
                '2x (%)',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 191,
            top: 371,
            child: SizedBox(
              width: 7 + 20,
              child: Text(
                Random().nextInt(100).toString() + '%',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 403,
            child: SizedBox(
              width: 7 + 43,
              child: Text(
                '3x (P/R)',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 151,
            top: 403,
            child: SizedBox(
              width: 7 + 29,
              child: Text(
                Random().nextInt(100).toString() +
                    '/' +
                    Random().nextInt(10).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 224,
            top: 403,
            child: SizedBox(
              width: 7 + 23,
              child: Text(
                Random().nextInt(10).toString() +
                    '/' +
                    Random().nextInt(10).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 435,
            child: SizedBox(
              width: 7 + 31,
              child: Text(
                '3x (%)',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 187,
            top: 435,
            child: SizedBox(
              width: 7 + 29,
              child: Text(
                Random().nextInt(10).toString() + '%',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 467,
            child: SizedBox(
              width: 7 + 43,
              child: Text(
                '1x (P/R)',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 151,
            top: 467,
            child: SizedBox(
              width: 7 + 29,
              child: Text(
                Random().nextInt(10).toString() +
                    '/' +
                    Random().nextInt(10).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 227,
            top: 467,
            child: SizedBox(
              width: 7 + 17,
              child: Text(
                Random().nextInt(10).toString() +
                    '/' +
                    Random().nextInt(10).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 499,
            child: SizedBox(
              width: 7 + 31,
              child: Text(
                '1x (%)',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 187,
            top: 499,
            child: SizedBox(
              width: 7 + 29,
              child: Text(
                Random().nextInt(10).toString() + '%',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 531,
            child: SizedBox(
              width: 7 + 91,
              child: Text(
                'Pickings (attack)',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 159,
            top: 531,
            child: SizedBox(
              width: 10 + 12,
              child: Text(
                Random().nextInt(190).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 228,
            top: 531,
            child: SizedBox(
              width: 7 + 15,
              child: Text(
                Random().nextInt(10).toString() +
                    '.' +
                    Random().nextInt(10).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 563,
            child: SizedBox(
              width: 7 + 101,
              child: Text(
                'Pickings (defense)',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 156,
            top: 563,
            child: SizedBox(
              width: 7 + 18,
              child: Text(
                Random().nextInt(100).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 229,
            top: 563,
            child: SizedBox(
              width: 7 + 12,
              child: Text(
                Random().nextInt(100).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 595,
            child: SizedBox(
              width: 7 + 92,
              child: Text(
                'Selections (total)',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 156,
            top: 595,
            child: SizedBox(
              width: 7 + 18,
              child: Text(
                Random().nextInt(100).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 225,
            top: 595,
            child: SizedBox(
              width: 7 + 21,
              child: Text(
                Random().nextInt(100).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 627,
            child: Text(
              'Transmissions',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontFamily: 'Roboto Condensed',
                fontWeight: FontWeight.w400,
                height: 1.50,
              ),
            ),
          ),
          Positioned(
            left: 156,
            top: 627,
            child: SizedBox(
              width: 7 + 18,
              child: Text(
                Random().nextInt(100).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 225,
            top: 627,
            child: SizedBox(
              width: 7 + 21,
              child: Text(
                Random().nextInt(100).toString() +
                    '.' +
                    Random().nextInt(10).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 659,
            child: SizedBox(
              width: 7 + 60,
              child: Text(
                'Intercepts',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 159,
            top: 659,
            child: SizedBox(
              width: 7 + 12,
              child: Text(
                Random().nextInt(10).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 229,
            top: 659,
            child: SizedBox(
              width: 7 + 12,
              child: Text(
                Random().nextInt(10).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 691,
            child: SizedBox(
              width: 7 + 39,
              child: Text(
                'Losses',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 159,
            top: 691,
            child: SizedBox(
              width: 7 + 12,
              child: Text(
                Random().nextInt(20).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 225,
            top: 691,
            child: SizedBox(
              width: 7 + 21,
              child: Text(
                Random().nextInt(10).toString() +
                    '.' +
                    Random().nextInt(10).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 723,
            child: Text(
              'Blockchain',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontFamily: 'Roboto Condensed',
                fontWeight: FontWeight.w400,
                height: 1.50,
              ),
            ),
          ),
          Positioned(
            left: 159,
            top: 723,
            child: SizedBox(
              width: 7 + 12,
              child: Text(
                Random().nextInt(40).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 228,
            top: 723,
            child: SizedBox(
              width: 7 + 15,
              child: Text(
                Random().nextInt(20).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 755,
            child: Text(
              'Fouls',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontFamily: 'Roboto Condensed',
                fontWeight: FontWeight.w400,
                height: 1.50,
              ),
            ),
          ),
          Positioned(
            left: 159,
            top: 755,
            child: SizedBox(
              width: 7 + 12,
              child: Text(
                Random().nextInt(50).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 225,
            top: 755,
            child: SizedBox(
              width: 7 + 21,
              child: Text(
                Random().nextInt(10).toString() +
                    '.' +
                    Random().nextInt(10).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 787,
            child: Text(
              'Fouls of the opponent',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontFamily: 'Roboto Condensed',
                fontWeight: FontWeight.w400,
                height: 1.50,
              ),
            ),
          ),
          Positioned(
            left: 162,
            top: 787,
            child: SizedBox(
              width: 7 + 6,
              child: Text(
                Random().nextInt(10).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 232,
            top: 787,
            child: SizedBox(
              width: 7 + 6,
              child: Text(
                Random().nextInt(10).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 819,
            child: SizedBox(
              width: 7 + 145,
              child: Text(
                'Utility factor',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 156,
            top: 819,
            child: SizedBox(
              width: 7 + 18,
              child: Text(
                Random().nextInt(100).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          Positioned(
            left: 225,
            top: 819,
            child: SizedBox(
              width: 7 + 21,
              child: Text(
                Random().nextInt(10).toString() +
                    '.' +
                    Random().nextInt(10).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
