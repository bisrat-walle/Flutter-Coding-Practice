double calculateBMI(_height, _weight){
    return _weight.toDouble() * 10000.0/ (_height.toDouble()*_height.toDouble());
}

class BMIResult extends StatelessWidget {
  final _age, _male, _weight, _height;
  const BMIResult({Key? key, required this._age, required this._male,
                 required this._weight, required this._height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bmi = calculateBMI(_height, _weight);
    return Center(
        child: Text("Your BMI is $bmi")
    );
  }
}