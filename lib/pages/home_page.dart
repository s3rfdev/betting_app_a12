import 'package:flutter/material.dart';

import '../widgets/app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(index: 0),
      body: Container(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
