import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

import '../res/styles.dart';
import '../widgets/app_bar.dart';
import '../widgets/header.dart';

class CreateNotesPage extends StatefulWidget {
  const CreateNotesPage({super.key});

  @override
  State<CreateNotesPage> createState() => _CreateNotesPageState();
}

class _CreateNotesPageState extends State<CreateNotesPage> {
  var title = TextEditingController();
  var text = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue,
      appBar: MyAppBar(index: 2),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(title: 'Create notes          '),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                child: Text('Title', style: h11w600),
              ),
              Container(
                child: TextFormField(
                  controller: title,
                  style: h12w600,
                  decoration: InputDecoration(
                    fillColor: blue2,
                    filled: true,
                  ),
                  maxLines: 1,
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                child: Text('Description', style: h11w600),
              ),
              TextFormField(
                controller: text,
                style: h12w600,
                decoration: InputDecoration(
                  fillColor: blue2,
                  filled: true,
                ),
                maxLines: 20,
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      height: 40,
                      width: 120,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: red),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text('create'.toUpperCase(), style: h11w600),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      title.clear();
                      text.clear();
                    },
                    child: Container(
                      height: 40,
                      width: 120,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: red),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text('Clear'.toUpperCase(), style: h11w600),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40)
            ],
          ),
        ),
      ),
    );
  }
}
