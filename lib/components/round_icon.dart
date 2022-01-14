import 'package:flutter/material.dart';

// custom component built using basic component called RawMaterialButton, press ctrl and click on the component to go to its dart file and see more about it
class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function() onPressed;

  RoundIconButton({required this.icon, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        child: Icon(icon),
        onPressed: onPressed,
        elevation: 6.0,
        constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
        shape: CircleBorder(),
        fillColor: Color(0xFF4C4F5E));
  }
}
