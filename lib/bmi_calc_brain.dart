import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});
  final double height;
  final int weight;

  double _bmi = 1.0;
  String Calculate() {
    _bmi = weight / pow(height * 0.3048, 2);
    //convert to 1 dp
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 18.5) {
      return 'NORMAL WEIGHT';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'Perfect, youre a normal weight';
    } else {
      return 'You are lower than normal body weight, You should eat more';
    }
  }
}
