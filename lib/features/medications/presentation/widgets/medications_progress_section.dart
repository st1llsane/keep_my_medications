import 'package:flutter/material.dart';

class MedicationsProgressSection extends StatelessWidget {
  const MedicationsProgressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Tuesday, April 15, 2025'),
          Text("Today's Schedule"),
          Text('Daily Progress:'),
        ],
      ),
    );
  }
}
