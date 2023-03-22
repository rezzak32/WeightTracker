import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:weight_changer/screens/add_records.dart';
import 'package:weight_changer/screens/graph.dart';
import 'package:weight_changer/screens/history.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentTab = 0;
  Widget _currentScreen = GraphScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: Text("Weight Tracker"),
        backgroundColor: Colors.blue.shade600,
      ), */
      body: _currentScreen,
      
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          Get.to(()=> AddRecordScreen() );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
          height: Get.height / 11,
          gapLocation: GapLocation.center,
          backgroundColor: Colors.blue,
          icons: [Icons.show_chart, Icons.history],
          iconSize: 30,
          activeIndex: _currentTab,
          onTap: (int) {
            setState(() {
              _currentTab = int;
              _currentScreen = (int==0)?GraphScreen():HistoryScreen();
            });
            
          }),
    );
  }
}
