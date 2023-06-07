import 'package:Horoscope/constants.dart';
import 'package:flutter/material.dart';

class HoroscopeDataAndHeading extends StatelessWidget {
  HoroscopeDataAndHeading({required this.heading, required this.info});

  final String? heading;
  final String? info;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$heading",
          style: descriptionHeading,
          textAlign: TextAlign.left,
        ),
        Text(
          "$info",
          style: descriptionStyle,
          textAlign: TextAlign.left,
        )
      ],
    );
  }
}
