import 'package:flutter/material.dart';
import 'constants.dart';

class ReuasbleCard extends StatelessWidget {
  ReuasbleCard({required this.seatn, required this.seatpos});
  final seatn;
  final seatpos;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kHeadlineColor,
      child: ListTile(
        title: Text(
          seatn.toString(),
          textAlign: TextAlign.center,
        ),
        subtitle: Text(
          seatpos,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}