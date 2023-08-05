import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../pages/calendar_page.dart';
import '../pages/interactive_page.dart';
import '../pages/match_page.dart';
import '../pages/news_page.dart';
import '../pages/notes_page.dart';
import '../res/styles.dart';

MyAppBar({required int index}) => AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: blueGrey,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () => Get.offAll(MatchPage()),
            child: Column(
              children: [
                Icon(
                  Icons.sports_basketball,
                  color: index == 0 ? red : blueGrey1,
                ),
                Text('Match',
                    style:
                        h12w400.copyWith(color: index == 0 ? red : blueGrey1)),
              ],
            ),
          ),
          InkWell(
            onTap: () => Get.offAll(NewsPage()),
            child: Column(
              children: [
                Icon(
                  Icons.newspaper,
                  color: index == 1 ? red : blueGrey1,
                ),
                Text('News',
                    style:
                        h12w400.copyWith(color: index == 1 ? red : blueGrey1)),
              ],
            ),
          ),
          InkWell(
            onTap: () => Get.offAll(NotesPage()),
            child: Column(
              children: [
                Icon(
                  Icons.message,
                  color: index == 2 ? red : blueGrey1,
                ),
                Text('Notes',
                    style:
                        h12w400.copyWith(color: index == 2 ? red : blueGrey1)),
              ],
            ),
          ),
          InkWell(
            onTap: () => Get.offAll(CalendarPage()),
            child: Column(
              children: [
                Icon(
                  Icons.calendar_month,
                  color: index == 3 ? red : blueGrey1,
                ),
                Text('Calendar',
                    style:
                        h12w400.copyWith(color: index == 3 ? red : blueGrey1)),
              ],
            ),
          ),
          InkWell(
            onTap: () => Get.offAll(InteractivePage()),
            child: Column(
              children: [
                Icon(
                  Icons.stream,
                  color: index == 4 ? red : blueGrey1,
                ),
                Text('Interactive',
                    style:
                        h12w400.copyWith(color: index == 4 ? red : blueGrey1)),
              ],
            ),
          ),
        ],
      ),
    );
