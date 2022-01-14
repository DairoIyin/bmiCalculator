import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({this.bmi, this.resultsText, this.interpretation});
  String? bmi;
  String? resultsText;
  String? interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        backgroundColor: Color(0xFF0A0D22),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text('Your Result ', style: kTitleTextStyle)),
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      resultsText!,
                      style: kresultTextStyle,
                    ),
                    Text(bmi!, style: kBMITextStyle),
                    Text(
                      interpretation!,
                      textAlign: TextAlign.center,
                      style: kVerdictTextStyle,
                    )
                  ],
                ),
                colour: kActiveCardColor,
              )),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonText: "RE-CALCULATE",
          )
        ],
      ),
    );
  }
}
