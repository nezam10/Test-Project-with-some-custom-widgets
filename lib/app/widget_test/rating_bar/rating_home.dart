import 'package:flutter/material.dart';
import 'package:test_project/app/widget_test/rating_bar/rating_bar.dart';

class RatingHome extends StatefulWidget {
  const RatingHome({
    Key? key,
  }) : super(key: key);

  @override
  _RatingHomeState createState() => _RatingHomeState();
}

class _RatingHomeState extends State<RatingHome> {
  int currentStep = 1;
  int stepLength = 4;
  late bool complete;

  next() {
    if (currentStep <= stepLength) {
      goTo(currentStep + 1);
    }
  }

  back() {
    if (currentStep > 1) {
      goTo(currentStep - 1);
    }
  }

  goTo(int step) {
    setState(() => currentStep = step);
    if (currentStep > stepLength) {
      setState(() => complete = true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("widget.title"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          NumberStepper(
            totalSteps: stepLength,
            width: MediaQuery.of(context).size.width,
            curStep: currentStep,
            stepCompleteColor: Colors.blue,
            currentStepColor: Color(0xffdbecff),
            inactiveColor: Color(0xffbababa),
            lineWidth: 5.5,
          ),
          const SizedBox(height: 30),
          Container(
            child: currentStep <= stepLength
                ? Text(
                    "Step $currentStep",
                    style: const TextStyle(
                      fontSize: 30,
                      color: Colors.blue,
                    ),
                  )
                : const Text(
                    "Completed!",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.blue,
                    ),
                  ),
          )
        ],
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: ElevatedButton(
              //disabledColor: Colors.grey[50],
              onPressed: currentStep == 1
                  ? null
                  : () {
                      back();
                    },
              child: const Text('Back'),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                next();
              },
              child: Text(
                currentStep == stepLength ? 'Finish' : 'Next',
                style: const TextStyle(color: Colors.white),
              ),
              //color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
