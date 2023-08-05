import 'package:flutter/material.dart';

import '../../res/styles.dart';

class NotesContainer extends StatefulWidget {
  const NotesContainer({
    super.key,
  });

  @override
  State<NotesContainer> createState() => _NotesContainerState();
}

class _NotesContainerState extends State<NotesContainer> {
  bool del = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: del ? 0 : 150,
      color: blueGrey,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: del ? 0 : 10),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Note tittle 1', style: h12w600),
              SizedBox(height: 20),
              Text(
                '"I know I\'m effective and I help the team succeed, I\'m on the list of the best. I have enough experience and maturity to know that. Do I consider myself the best in the world? No. In my opinion, the best is someone who has gone all the way with their team and made them champions.',
                style: h12w400.copyWith(color: Colors.white),
              )
            ],
          ),
          Positioned(
            right: -10,
            top: -10,
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: CircleAvatar(
                      radius: 15,
                      backgroundColor: blue,
                      child: Icon(
                        Icons.edit,
                        color: Colors.white,
                        size: 18,
                      ),
                    )),
                IconButton(
                    onPressed: () {
                      setState(() {
                        del = true;
                      });
                    },
                    icon: CircleAvatar(
                      radius: 15,
                      backgroundColor: blue,
                      child: Icon(
                        Icons.delete,
                        color: Colors.white,
                        size: 18,
                      ),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
