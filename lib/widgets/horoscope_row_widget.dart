import 'package:Horoscope/widgets/horoscope_data_and_heading.dart';
import 'package:flutter/material.dart';

class HoroscopeRowWidget extends StatelessWidget {
  HoroscopeRowWidget(
      {required this.heading1,
      required this.info1,
      required this.heading2,
      required this.info2});

  final String? heading1;
  final String? info1;
  final String? heading2;
  final String? info2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, right: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HoroscopeDataAndHeading(heading: "$heading1", info: "$info1"),
          HoroscopeDataAndHeading(heading: "$heading2", info: "$info2")
        ],
      ),
    );
  }
}
