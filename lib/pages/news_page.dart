import 'package:flutter/material.dart';

import '../res/styles.dart';
import '../widgets/app_bar.dart';
import '../widgets/header.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue,
      appBar: MyAppBar(index: 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(title: 'History      '),
            SizedBox(height: 10),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  width: double.infinity,
                  height: 180,
                  child: Image.asset(
                    'images/bg.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Text(
                        'Yannis Adetokunbo: Stephen Curry is the best basketball player in the world',
                        style: h11w600,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Milwaukee Bucks forward Yannis Adetokunbo spoke out about the best basketball player in the world in his opinion.\n\n"I know I\'m effective and I help the team succeed, I\'m on the list of the best. I have enough experience and maturity to know that. Do I consider myself the best in the world? No. In my opinion, the best is someone who has gone all the way with their team and made them champions.\n',
                        style: h11w400,
                      )
                    ],
                  ),
                )
              ],
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  width: double.infinity,
                  height: 180,
                  child: Image.asset(
                    'images/bg.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Text(
                        'Yannis Adetokunbo: Stephen Curry is the best basketball player in the world',
                        style: h11w600,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Milwaukee Bucks forward Yannis Adetokunbo spoke out about the best basketball player in the world in his opinion.\n\n"I know I\'m effective and I help the team succeed, I\'m on the list of the best. I have enough experience and maturity to know that. Do I consider myself the best in the world? No. In my opinion, the best is someone who has gone all the way with their team and made them champions.\n',
                        style: h11w400,
                      )
                    ],
                  ),
                )
              ],
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  width: double.infinity,
                  height: 180,
                  child: Image.asset(
                    'images/bg.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Text(
                        'Yannis Adetokunbo: Stephen Curry is the best basketball player in the world',
                        style: h11w600,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Milwaukee Bucks forward Yannis Adetokunbo spoke out about the best basketball player in the world in his opinion.\n\n"I know I\'m effective and I help the team succeed, I\'m on the list of the best. I have enough experience and maturity to know that. Do I consider myself the best in the world? No. In my opinion, the best is someone who has gone all the way with their team and made them champions.\n',
                        style: h11w400,
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
