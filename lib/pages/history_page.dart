import 'dart:math';

import 'package:flutter/material.dart';

import '../models/matches/matches.dart';
import '../repository/api/matches_api.dart';
import '../res/styles.dart';
import '../widgets/app_bar.dart';
import '../widgets/header.dart';
import '../widgets/history/history_container.dart';
import '../widgets/history/history_table.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  Matches matches = Matches(tournaments: []);
  bool initFlag = true;
  @override
  Widget build(BuildContext context) {
    if (initFlag) {
      initFlag = false;
      () async {
        var res =
            await MatchesApi.getMatches(sport: 'basketball', date: '20230730');

        print(res.tournaments[0].Events[0]);

        setState(() {
          matches = res;
        });
        //print(matches);
      }();
    }
    var tr = matches.tournaments.length > 0 ? matches.tournaments.length : 1;
    var index = Random().nextInt(tr);
    return Scaffold(
      backgroundColor: blue,
      appBar: MyAppBar(index: 0),
      body: SingleChildScrollView(
          child: matches.tournaments.isNotEmpty
              ? Column(
                  children: [
                    Header(title: 'History      '),
                    SizedBox(height: 10),
                    if (matches.tournaments.isNotEmpty)
                      HistoryContainer(
                        img1: matches.tournaments[index].Events[0].T1[0].Img ??
                            '',
                        img2: matches.tournaments[index].Events[0].T2[0].Img ??
                            '',
                        name1: matches.tournaments[index].Events[0].T1[0].Nm!,
                        name2: matches.tournaments[index].Events[0].T1[0].Nm!,
                        val1: matches.tournaments[index].Events[0].Tr1!,
                        val2: matches.tournaments[index].Events[0].Tr2!,
                      ),
                    if (matches.tournaments.isNotEmpty &&
                        matches.tournaments[index].Events.isNotEmpty)
                      HistoryContainer(
                        img1: matches.tournaments[index].Events[1].T1[0].Img ??
                            '',
                        img2: matches.tournaments[index].Events[1].T2[0].Img ??
                            '',
                        name1: matches.tournaments[index].Events[1].T1[0].Nm!,
                        name2: matches.tournaments[index].Events[1].T1[0].Nm!,
                        val1: matches.tournaments[index].Events[1].Tr1!,
                        val2: matches.tournaments[index].Events[1].Tr2!,
                      ),
                    if (matches.tournaments.isNotEmpty &&
                        matches.tournaments[index].Events.length > 2)
                      HistoryContainer(
                        img1: matches.tournaments[index].Events[2].T1[0].Img ??
                            '',
                        img2: matches.tournaments[index].Events[2].T2[0].Img ??
                            '',
                        name1: matches.tournaments[index].Events[2].T1[0].Nm!,
                        name2: matches.tournaments[index].Events[2].T1[0].Nm!,
                        val1: matches.tournaments[index].Events[2].Tr1!,
                        val2: matches.tournaments[index].Events[2].Tr2!,
                      ),
                    SizedBox(height: 50),
                    Center(child: Text('Statistics', style: h14w700)),
                    SizedBox(height: 10),
                    Center(child: HistoryTable()),
                    SizedBox(height: 40),
                  ],
                )
              : SizedBox()),
    );
  }
}
