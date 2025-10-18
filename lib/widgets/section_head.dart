import 'package:flutter/material.dart';

class SectionHead extends StatelessWidget {
  String headingText;
  String viewAllText;
  SectionHead({
    super.key,
    required this.headingText,
    required this.viewAllText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headingText,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            Text(
              viewAllText,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black.withOpacity(.6),
              ),
            ),
            Icon(
              Icons.arrow_forward,
              size: 20,
              color: Colors.black.withOpacity(.6),
            ),
          ],
        ),
      ],
    );
  }
}