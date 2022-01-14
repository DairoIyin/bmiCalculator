import 'package:flutter/material.dart';
import '../screens/input_page.dart';

//customized widget
class ReusableCard extends StatelessWidget {
  //properties are final because stateless widgets are not mutable
  final Color colour;
  final cardChild;
  final gestureDetect;
  final Function()? onPress;

  ReusableCard(
      {required this.colour, this.cardChild, this.gestureDetect, this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
