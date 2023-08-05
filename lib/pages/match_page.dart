import 'package:flutter/material.dart';

import '../models/matches/matches.dart';
import '../repository/api/matches_api.dart';
import '../res/styles.dart';
import '../widgets/app_bar.dart';
import '../widgets/home/match_card.dart';

class MatchPage extends StatefulWidget {
  const MatchPage({super.key});

  @override
  State<MatchPage> createState() => _MatchPageState();
}

class _MatchPageState extends State<MatchPage> {
  Matches matches = Matches(tournaments: []);
  bool initFlag = true;
  @override
  Widget build(BuildContext context) {
    if (initFlag) {
      initFlag = false;
      () async {
        var res =
            await MatchesApi.getMatches(sport: 'basketball', date: '20230805');
        setState(() {
          matches = res;
        });
        print(matches);
      }();
    }

    return Scaffold(
      backgroundColor: blue,
      appBar: MyAppBar(index: 0),
      body: SingleChildScrollView(
        child: matches.tournaments.isNotEmpty
            ? Column(
                children: [
                  ...matches.tournaments[0].Events.map((e) {
                    String dateWithT =
                        '${e.Esd.toString().substring(0, 8)}T${e.Esd.toString().substring(8)}';
                    DateTime dateTime = DateTime.parse(dateWithT);
                    return MatchCard(
                      team1: e.T1[0],
                      team2: e.T2[0],
                      date: dateTime,
                    );
                  }),
                ],
              )
            : SizedBox(),
      ),
    );
  }
}
