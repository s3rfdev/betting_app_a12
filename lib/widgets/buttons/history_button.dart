import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../../pages/history_page.dart';
import '../../res/styles.dart';

class HistoryButton extends StatelessWidget {
  const HistoryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(HistoryPage()),
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
          decoration:
              BoxDecoration(border: Border.all(width: 2, color: blueGrey1)),
          child: Text('HISTORY',
              style: h12w400.copyWith(fontWeight: FontWeight.w700))),
    );
  }
}
