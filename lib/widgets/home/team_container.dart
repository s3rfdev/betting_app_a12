import 'package:flutter/material.dart';

import '../../res/styles.dart';
import '../buttons/history_button.dart';

class TeamContainer extends StatelessWidget {
  TeamContainer({
    super.key,
    required this.img,
    required this.name,
  });
  String img;
  String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 140,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 70,
            height: 70,
            child: Image.network(
                'https://lsm-static-prod.livescore.com/high/$img',
                fit: BoxFit.fill),
          ),
          Text(name, style: h12w400.copyWith(color: Colors.white), maxLines: 1),
          HistoryButton(),
        ],
      ),
    );
  }
}
