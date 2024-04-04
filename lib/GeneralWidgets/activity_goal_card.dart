import 'package:flutter/material.dart';

class ActivityGoalCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String description;

  const ActivityGoalCard(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xff294E5F),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  title,
                  style: const TextStyle(color: Colors.white, fontSize: 15),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              subTitle,
              style: const TextStyle(color: Colors.white, fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              description,
              style: const TextStyle(color: Colors.white, fontSize: 15),
            ),
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }
}
