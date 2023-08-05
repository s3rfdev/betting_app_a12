import 'package:flutter/material.dart';

import 'package:get/route_manager.dart';
import 'package:table_calendar/table_calendar.dart';
import '../res/styles.dart';
import '../widgets/app_bar.dart';
import '../widgets/header.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  var _selectedDay = DateTime.now();
  var _focusedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue,
      appBar: MyAppBar(index: 3),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(title: 'Calendar        '),
            SizedBox(height: 30),
            Container(
              width: 300,
              color: blue2,
              child: Column(
                children: [
                  TableCalendar(
                    daysOfWeekStyle: DaysOfWeekStyle(
                      weekdayStyle: TextStyle(
                        color: Colors.white,
                      ),
                      weekendStyle: TextStyle(
                        color: red,
                      ),
                    ),
                    headerStyle: HeaderStyle(
                      titleTextStyle: TextStyle(
                        color: Colors.white,
                      ),
                      formatButtonTextStyle: TextStyle(
                        color: Colors.white,
                      ),
                      formatButtonShowsNext: false,
                    ),
                    calendarStyle: CalendarStyle(
                      defaultTextStyle: TextStyle(
                        color: Colors.white,
                      ),
                      weekendTextStyle: TextStyle(color: red),
                      rangeStartTextStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    firstDay: DateTime.utc(2010, 10, 16),
                    lastDay: DateTime.utc(2030, 3, 14),
                    focusedDay: DateTime.now(),
                    selectedDayPredicate: (day) {
                      return isSameDay(_selectedDay, day);
                    },
                    onDaySelected: (selectedDay, focusedDay) {
                      setState(() {
                        _selectedDay = selectedDay;
                        _focusedDay =
                            focusedDay; // update `_focusedDay` here as well
                      });
                    },
                  ),
                  SizedBox(height: 10),
                  Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 100,
                          height: 30,
                          alignment: Alignment.center,
                          child: Text(
                            'Clear',
                            style: h12w400.copyWith(color: Colors.white),
                          ),
                        ),
                        InkWell(
                          onTap: () => Get.back(),
                          child: Container(
                            width: 100,
                            height: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: blueGrey,
                            ),
                            child: Text(
                              'Apply',
                              style: h12w400.copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
