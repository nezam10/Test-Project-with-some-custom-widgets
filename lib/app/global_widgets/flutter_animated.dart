import 'package:flutter/material.dart';
import 'package:flutter_animate/animate.dart';
import 'package:flutter_animate/effects/fade_effect.dart';
import 'package:flutter_animate/effects/scale_effect.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:get/get.dart';

class FlutterAnimated extends StatefulWidget {
  const FlutterAnimated({super.key});

  @override
  State<FlutterAnimated> createState() => _FlutterAnimatedState();
}

class _FlutterAnimatedState extends State<FlutterAnimated> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animations"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Animations"),
              const SizedBox(height: 20),
              Animate(
                effects: [FadeEffect(), ScaleEffect()],
                child: Text("Hello World!"),
              ),
              const SizedBox(height: 20),
              const Text("Hello World!")
                  .animate()
                  .fade(duration: 500.ms)
                  .scale(delay: 500.ms),
              const SizedBox(height: 20),
              Text("Hello World!")
                  .animate()
                  .fadeIn() // uses `Animate.defaultDuration`
                  .scale() // inherits duration from fadeIn
                  .move(
                      delay: 300.ms,
                      duration: 600.ms) // runs after the above w/new duration
                  .blur(end: 8.0),
              const SizedBox(height: 20),
              Text("Hello")
                  .animate()
                  .fadeIn(delay: 300.ms, duration: 500.ms)
                  .then() // sets own delay to 800ms (300+500)
                  .slide(duration: 400.ms) // inherits the 800ms delay
                  .then(delay: 200.ms) // sets delay to 1400ms (800+400+200)
                  .blur() // inherits the 1400ms delay
                  // Explicitly setting delay overrides the inherited value.
                  // This move effect will run BEFORE the initial fade:
                  .move(delay: 0.ms),
              const SizedBox(height: 20),
              Container(
                alignment: Alignment.center,
                height: 100,
                width: Get.width,
                color: Colors.pink,
                child: AnimatedButton(
                  height: 40,
                  width: 250,
                  text: isClick ? '50\$' : 'Blance',
                  isReverse: true,
                  selectedTextColor: Colors.black,
                  transitionType: TransitionType.LEFT_TO_RIGHT,
                  textStyle: const TextStyle(color: Colors.red, fontSize: 16),
                  backgroundColor: Colors.black,
                  borderColor: Colors.white,
                  borderRadius: 50,
                  borderWidth: 2,
                  onPress: () async {
                    Future.delayed(
                      const Duration(milliseconds: 800),
                    );
                    setState(() {});
                    Future.delayed(
                      const Duration(
                        milliseconds: 800,
                      ),
                      () => setState(() {
                        isClick = !isClick;
                      }),
                    );
                  },
                ),
              ),
              Animate()
                  .custom(
                    duration: const Duration(seconds: 10),
                    begin: 10,
                    end: 0,
                    builder: (_, value, __) => Text(value.round().toString()),
                  )
                  .fadeOut(),
              Text("Horrible Pulsing Text")
                  .animate(
                      onPlay: (controller) => controller.repeat(reverse: true))
                  .fadeOut(curve: Curves.easeInOut),
              const SizedBox(height: 20),
              Column(
                children: AnimateList(
                  interval: 400.ms,
                  effects: [
                    FadeEffect(duration: 500.ms),
                    ScaleEffect(duration: 50.ms)
                  ],
                  children: list
                      .map((e) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: ListTile(
                                title: Text(e.toString()),
                              ),
                            ),
                          ))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool isClick = false;

  List<String> list = [
    "Reloaded 1 of 1612 libraries in 1,704ms",
    "Reloaded 1 of 1612 libraries in 1,704ms",
    "Reloaded 1 of 1612 libraries in 1,704ms",
    "Reloaded 1 of 1612 libraries in 1,704ms",
    "Reloaded 1 of 1612 libraries in 1,704ms",
    "Reloaded 1 of 1612 libraries in 1,704ms",
    "Reloaded 1 of 1612 libraries in 1,704ms",
    "Reloaded 1 of 1612 libraries in 1,704ms",
    "Reloaded 1 of 1612 libraries in 1,704ms",
    "Reloaded 1 of 1612 libraries in 1,704ms",
    "Reloaded 1 of 1612 libraries in 1,704ms",
  ];
}
