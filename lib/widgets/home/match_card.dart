import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../models/matches/matches.dart';
import '../../res/styles.dart';
import 'team_container.dart';

class MatchCard extends StatelessWidget {
  MatchCard({
    super.key,
    required this.team1,
    required this.team2,
    required this.date,
  });
  Team team1;
  Team team2;
  DateTime date;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      height: 160,
      color: blueGrey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TeamContainer(
            img: team1.Img!,
            name: team1.Nm!,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(DateFormat('dd.MM.yyyy').format(date), style: h15w400),
              Text(DateFormat('hh:mm').format(date), style: h15w400),
            ],
          ),
          TeamContainer(
            img: team2.Img!,
            name: team2.Nm!,
          ),
        ],
      ),
    );
  }
}
