import 'package:flutter/material.dart';

double calculateBMI(height, weight){
    return weight.toDouble() * 10000.0/ (height.toDouble()*height.toDouble());
}

String getLabel(double bmi){
  if (bmi < 16){
    return "Severe Thinness";
  } else if (bmi <= 17){
    return "Moderate Thinness";
  } else if (bmi <= 18.5){
    return "Mild Thinness";
  }else if (bmi <= 25){
    return "Normal";
  }else if (bmi <= 30){
    return "Overweight";
  }else if (bmi <= 35){
    return "Obess Class 1";
  }else if (bmi <= 40){
    return "Obess Class 2";
  }else{
    return "Obess Class 3";
  }
}



class BMIResult extends StatelessWidget {
  final age, male, weight, height;
  const BMIResult({Key? key, required this.age, required this.male,
                 required this.weight, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bmi = calculateBMI(height, weight).toStringAsFixed(2);
    final label = getLabel(double.parse(bmi)).toUpperCase();
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text("BMI CALCULATOR - Result", style: Theme.of(context).textTheme.headline2,),
        ),
        body: Container(
            color: Colors.blue.shade900,
            child: Column(
                children: <Widget> [
                    SizedBox(height:100,),
                    Expanded(
                        child:  Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade900,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.all(16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget> [
                              Text("Your BMI is $bmi", style: Theme.of(context).textTheme.headline1),
                              SizedBox(height:50),
                              Text("According to WHO your BMI is labeled as ", style: Theme.of(context).textTheme.headline2),
                              Text("$label", style: Theme.of(context).textTheme.headline1),
                            ],
                          ),
                        ),
                      ),
                
                    SizedBox(height:100,),
                    Container(
                        width: double.infinity,
                        height: 60,
                        child: MaterialButton(
                            textColor: Colors.white,
                            child: Padding(
                                padding: EdgeInsets.only(bottom: 15),
                                child: Text('BACK TO CALCULATOR', style: Theme.of(context).textTheme.headline2),
                            ),
                            color: Colors.purple,
                            onPressed: () {
                                Navigator.pop(context);
                            },
                        ),
                    ),
                ],
            ),
        ),
        );
  }
}