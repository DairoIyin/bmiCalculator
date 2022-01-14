import 'package:flutter/material.dart';
import '../constants.dart';

//customized widget for content of card
class ReusableCardContent extends StatelessWidget {
  //IconData is a 'datatype' of icon widget
  final IconData? icon;
  final String label;

  ReusableCardContent({this.icon, required this.label});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80.0),
        SizedBox(height: 15.0),
        Text(label, style: kLabeltextStyle)
      ],
    );
  }
}
