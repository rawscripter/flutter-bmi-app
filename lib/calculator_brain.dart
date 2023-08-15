class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});


  final int height;
  final int weight;

  String calculateBMI() {
    double bmi = weight / (height * height) * 10000;
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    double bmi = weight / (height * height) * 10000;
    if (bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    double bmi = weight / (height * height) * 10000;
    if (bmi >= 25) {
      return 'Your BMI result is quite high, you should exercise more!';
    } else if (bmi > 18.5) {
      return 'Your BMI result is normal, good job!';
    } else {
      return 'Your BMI result is quite low, you should eat more!';
    }
  }


}
