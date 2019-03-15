import 'package:flutter/material.dart';

class StepperExample extends StatefulWidget {
  @override
  _StepperExampleState createState() => _StepperExampleState();
}

class _StepperExampleState extends State<StepperExample> {
  int current_step = 0;
   List<Step> mysteps=[
            Step(
              title: Text("Enter Mobile Number"),
              content: TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter Mobile Number"
                ),
              ),
              isActive: true
            ),
            Step(
              title: Text("Enter Otp"),
              content: Text("Enter Otp"),
              isActive: true,
            ),
            Step(
              title: Text("Yeah"),
              content: Text("You are done"),
              isActive: true
            ),
          ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stepper Example'),
      ),
      body: Container(
        child: Stepper(
          steps:mysteps,
          type: StepperType.vertical,
          currentStep:this.current_step,
          onStepTapped: (step){
            setState(() {
             current_step=step; 
            });
          },
          onStepCancel: () {
          setState(() {
            if (current_step > 0) {
              current_step = current_step - 1;
            } else {
              current_step = 0;
            }
          });
        },
         onStepContinue: () {
          setState(() {
            if (current_step < mysteps.length - 1) {
              current_step = current_step + 1;
            } else {
              current_step = 0;
            }
          });
        },
        ),
      ),
    );
  }
}