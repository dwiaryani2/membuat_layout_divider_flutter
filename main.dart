import 'package:flutter/material.dart';
import 'vertikal_divider_demo.dart';
import 'horizontal_divider_demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Divider Demo"),
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Vertical Divider'),
                Tab(text: 'Horizontal Divider'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              VerticalDividerDemo(), // Widget untuk Vertical Divider
              HorizontalDividerDemo(), // Widget untuk Horizontal Divider
            ],
          ),
        ),
      ),
    );
  }
}




