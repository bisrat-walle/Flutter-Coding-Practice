import 'package:flutter/material.dart';
import 'bmi_result_screen.dart';

class BMICalculator extends StatefulWidget {
  BMICalculator({Key? key}) : super(key: key);

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  int _height = 170;
  bool _male = true;
  int _weight = 60;
  int _age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text("BMI CALCULATOR", textAlign: TextAlign.center, style: Theme.of(context).textTheme.headline2,),
        ),
        body: Container(
            color: Colors.blue.shade900,
            child: Column(
                children: <Widget> [
                    Expanded(
                        child: 
                    Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                children: <Widget> [
                    Expanded(
                        child: Row(
                        children: <Widget> [
                            Expanded(
                                child: Container(
                                    padding: EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade900,
                                        borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget> [
                                            Icon(Icons.male, size: 60),
                                            Text("MALE", style: Theme.of(context).textTheme.headline6)
                                        ],
                                    ),
                                ),
                            ),
                            SizedBox(width: 15),
                            Expanded(
                                child: Container(
                                    padding: EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade900,
                                        borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget> [
                                            Icon(Icons.female, size: 60),
                                            Text("FEMALE", style: Theme.of(context).textTheme.headline6)
                                        ],
                                    ),
                                ),
                            ),
                        ],
                    ),
                    ),
                    SizedBox(height: 15),
                    Expanded(
                        child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade900,
                            borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget> [
                                Text("HEIGHT", style: Theme.of(context).textTheme.headline6),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                        Text("$_height", style: Theme.of(context).textTheme.headline1),
                                        Padding(
                                            padding: EdgeInsets.only(top:5),
                                            child: Text("cm", style: Theme.of(context).textTheme.headline6),
                                        ),
                                    ]    
                                ),
                                Slider(
                                    min: 100,
                                    max: 220,
                                    divisions: 121,
                                    label: '${_height}cm',
                                    value: _height.toDouble(),
                                    activeColor: Colors.white,
                                    inactiveColor: Colors.white.withOpacity(.5),
                                    onChanged: (newValue) {
                                        setState(
                                            () {
                                                _height = newValue.round();
                                            }
                                        );
                                    },
                                ),
                            ],
                        ),
                    ),
                    ),
                    SizedBox(height: 15),
                    Expanded(
                        child: Row(
                        children: <Widget> [
                            Expanded(
                                child: Container(
                                    padding: EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade900,
                                        borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget> [
                                            Text("WEIGHT", style: Theme.of(context).textTheme.headline6),
                                            Text("$_weight", style: Theme.of(context).textTheme.headline1),
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget> [
                                                    GestureDetector(
                                                        child: Container(
                                                            width: 40,
                                                            height: 40,
                                                            decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.circular(25),
                                                                color: Colors.blue.shade900,
                                                            ),
                                                            child: Icon(Icons.remove, size: 35),
                                                        ),
                                                        onTap: () {
                                                            setState(
                                                                (){
                                                                    if (_weight == 0){
                                                                        return;
                                                                    }
                                                                    _weight -= 1;
                                                                }
                                                            );
                                                        }
                                                    ),
                                                    SizedBox(width:15),
                                                    GestureDetector(
                                                        child: Container(
                                                            width: 40,
                                                            height: 40,
                                                            decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.circular(25),
                                                                color: Colors.blue.shade900,
                                                            ),
                                                            child: Icon(Icons.add, size: 35),
                                                        ),
                                                        
                                                        onTap: () {
                                                            setState(
                                                                (){
                                                                    _weight += 1;
                                                                }
                                                            );
                                                        }
                                                    ),
                                                ],
                                            ),
                                        ],
                                    ),
                                ),
                            ),
                            SizedBox(width: 15),
                        Expanded(
                                child: Container(
                                    padding: EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade900,
                                        borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget> [
                                            Text("AGE", style:Theme.of(context).textTheme.headline6),
                                            Text("$_age", style: Theme.of(context).textTheme.headline1),
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget> [
                                                    GestureDetector(
                                                        child: Container(
                                                            width: 40,
                                                            height: 40,
                                                            decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.circular(25),
                                                                color: Colors.blue.shade900,
                                                            ),
                                                            child: Icon(Icons.remove, size: 35),
                                                        ),
                                                        onTap: () {
                                                            setState(
                                                                () {
                                                                    if (_age == 100){
                                                                        return;
                                                                    }
                                                                    _age -= 1;
                                                                }
                                                            );
                                                        }
                                                    ),
                                                    SizedBox(width:15),
                                                    GestureDetector(
                                                        child: Container(
                                                            width: 40,
                                                            height: 40,
                                                            decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.circular(25),
                                                                color: Colors.blue.shade900,
                                                            ),
                                                            child: Icon(Icons.add, size: 35),
                                                        ),
                                                        onTap: () {
                                                            setState(
                                                                () {
                                                                    _age += 1;
                                                                }
                                                            );
                                                        }
                                                    ),
                                                ],
                                            ),
                                        ],
                                    ),
                                ),
                            ),
                        ],
                    ),
                    ),
                ],
            ),
                    ),
                    ) ,
                    
                    Container(
                        width: double.infinity,
                        height: 60,
                        child: MaterialButton(
                            textColor: Colors.white,
                            child: Padding(
                                padding: EdgeInsets.only(bottom: 15),
                                child: Text('CALCULATE', style: Theme.of(context).textTheme.headline2),
                            ),
                            color: Colors.purple,
                            onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(
                                        builder: (context) {
                                            return BMIResult(age:_age, male:_male, weight:_weight, height:_height);
                                        }
                                    )
                                );
                            },
                        ),
                    ),
                ],
            ), 
        ),
    );
  }
}