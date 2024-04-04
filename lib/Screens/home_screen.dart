import 'package:flutter/material.dart';
import 'package:test_task/GeneralWidgets/activity_goal_card.dart';
import 'package:test_task/GeneralWidgets/basic_card.dart';
import 'package:test_task/GeneralWidgets/in_active_card.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
          title: Text(widget.title),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              switch (index) {
                case 0:
                  return const OuraBasicCard(
                      title:
                          'Trends showing below are based on your focus area',
                      iconName: 'assets/icons/lightning.png',
                      subTitle: 'Be productive and energetic');
                case 1:
                  return InActiveCard();
                default:
                  return const ActivityGoalCard(
                      title: 'ACTIVITY GOAL',
                      subTitle: 'active calories',
                      description: 'Today activity goal this is a test text');
              }
            },
            separatorBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Container(
                  height: 1,
                ),
              );
            },
            itemCount: 5));
  }
}
