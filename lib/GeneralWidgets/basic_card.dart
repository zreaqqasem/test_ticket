import 'package:flutter/material.dart';

class OuraBasicCard extends StatelessWidget {
  final String title;
  final String iconName;
  final String subTitle;

  const OuraBasicCard(
      {super.key,
      required this.title,
      required this.iconName,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xff294E5F),
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 20, bottom: 20, left: 5, right: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 12,color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset(
                    color: Colors.white,
                    iconName,
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    subTitle,
                    style: const TextStyle(fontSize: 14,color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
