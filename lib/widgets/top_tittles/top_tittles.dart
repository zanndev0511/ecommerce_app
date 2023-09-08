import 'package:app_demo/consts/consts.dart';
import 'package:flutter/material.dart';

class TopTitles extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool hasArrowBack;
  const TopTitles(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.hasArrowBack});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        (kToolbarHeight - 20).heightBox,
        if (hasArrowBack)
          const Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: BackButton(),
          ),
        12.heightBox,
        Text(title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        12.heightBox,
        Text(subtitle),
        12.heightBox,
      ],
    );
  }
}
