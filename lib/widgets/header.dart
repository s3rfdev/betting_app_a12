import 'package:flutter/material.dart';

import '../res/styles.dart';

class Header extends StatelessWidget {
  Header({super.key, required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      color: blue2,
      child: Row(
        children: [
          BackButton(color: Colors.white),
          Expanded(child: SizedBox()),
          Text(title, style: h12w400.copyWith(color: Colors.white)),
          Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
