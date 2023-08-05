import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../res/styles.dart';

class HistoryContainer extends StatelessWidget {
  HistoryContainer({
    super.key,
    required this.img1,
    required this.img2,
    required this.name1,
    required this.name2,
    required this.val1,
    required this.val2,
  });

  String img1;
  String img2;
  String name1;
  String name2;
  String val1;
  String val2;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      height: 50,
      color: blue2,
      child: Row(
        children: [
          SizedBox(width: 4),
          Container(
            height: 30,
            width: 30,
            child: img1 == ''
                ? Image.network(
                    'https://www.vhv.rs/dpng/d/58-583825_team-icon-png-round-transparent-png.png')
                : Image.network(
                    'https://lsm-static-prod.livescore.com/high/$img1'),
          ),
          SizedBox(width: 4),
          SizedBox(
            width: 60,
            child: Text(
              name1,
              style: h11w400,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(' - ', style: h11w400),
          SizedBox(
            width: 60,
            child: Text(
              name2,
              style: h11w400,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(width: 4),
          Container(
            height: 30,
            width: 30,
            child: img2 == ''
                ? Image.network(
                    'https://www.vhv.rs/dpng/d/58-583825_team-icon-png-round-transparent-png.png')
                : Image.network(
                    'https://lsm-static-prod.livescore.com/high/$img2'),
          ),
          Expanded(child: SizedBox(width: 10)),
          Text('$val1:$val2', style: h20w400),
          Expanded(child: SizedBox(width: 10)),
          Column(
            children: [
              Text(
                  DateFormat('dd.MM.yyyy')
                      .format(DateTime.now().subtract(Duration(days: 3))),
                  style: h15w400),
              Text(
                  DateFormat('hh:00').format(DateTime.now().subtract(
                      Duration(days: 7, hours: Random().nextInt(20)))),
                  style: h15w400),
            ],
          ),
          SizedBox(width: 10)
        ],
      ),
    );
  }
}
