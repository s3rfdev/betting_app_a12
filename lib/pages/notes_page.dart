import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

import '../res/styles.dart';
import '../widgets/app_bar.dart';
import '../widgets/header.dart';
import '../widgets/notes/notes_container.dart';
import 'create_notes_page.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({super.key});

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue,
      appBar: MyAppBar(index: 2),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Header(title: 'Notes        '),
              Positioned(
                right: 10,
                top: 4,
                child: InkWell(
                  onTap: () => Get.to(CreateNotesPage()),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        Text(
                          'ADD',
                          style: h12w600,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
            SizedBox(height: 10),
            NotesContainer(),
            NotesContainer(),
            NotesContainer(),
          ],
        ),
      ),
    );
  }
}
