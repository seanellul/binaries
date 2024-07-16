import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'storylines/storyline.dart';
import 'modules/animations.dart';
import 'modules/functions.dart';
import 'modules/choice_buttons.dart';

class MyGameScreen extends StatefulWidget {
  @override
  _MyGameScreenState createState() => _MyGameScreenState();
}

class _MyGameScreenState extends State<MyGameScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  String currentScene = 'start';
  List<Map<String, String>> storylineLog = [];
  bool isTransitioning = false;
  double opacityLevel = 1.0;
  String displayedText = '';
  String fullText = '';
  String selectedOption = '';

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3), // Slow animation
      vsync: this,
    )..repeat(reverse: true);
    _animation = Tween<double>(begin: 0.0, end: 10.0).animate(_controller);
    _triggerOpeningFunction(currentScene);
    fullText = storyline[currentScene]['description'];
    _revealText();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onOptionSelected(String option) async {
    setState(() {
      selectedOption = option;
      displayedText = option;
      opacityLevel = 0.0;
    });

    await Future.delayed(Duration(milliseconds: 500));

    setState(() {
      storylineLog.add({
        'description': storyline[currentScene]['description'],
        'option': option,
      });

      _triggerClosingFunctions(currentScene, option);

      currentScene = storyline[currentScene]['options'][option]['nextScene'];
      fullText = storyline[currentScene]['description'];
      
      _triggerOpeningFunction(currentScene);
    });

    await Future.delayed(Duration(milliseconds: 500));

    setState(() {
      displayedText = '';
      _revealText();
      opacityLevel = 1.0;
      isTransitioning = false;
      selectedOption = '';
    });
  }

  void _restartGame() {
    setState(() {
      currentScene = 'start';
      storylineLog.clear();
      _triggerOpeningFunction(currentScene);
      fullText = storyline[currentScene]['description'];
      displayedText = '';
      _revealText();
    });
  }

  void _triggerOpeningFunction(String scene) {
    if (storyline[scene].containsKey('openingFunction')) {
      for (int i = 0; i < storyline[scene]['openingFunction'].length; i++) {
        String functionName = storyline[scene]['openingFunction'][i];
        dynamic parameter = storyline[scene]['parameters'][i];
        triggerFunction(functionName, parameter: parameter);
      }
    }
  }

  void _triggerClosingFunctions(String scene, String option) {
    if (storyline[scene]['options'][option].containsKey('closingFunctions')) {
      for (int i = 0; i < storyline[scene]['options'][option]['closingFunctions'].length; i++) {
        String functionName = storyline[scene]['options'][option]['closingFunctions'][i];
        dynamic parameter = storyline[scene]['options'][option]['parameters'][i];
        triggerFunction(functionName, parameter: parameter);
      }
    }
  }

  void _revealText() async {
    for (int i = 0; i <= fullText.length; i++) {
      await Future.delayed(Duration(milliseconds: 15));
      setState(() {
        displayedText = fullText.substring(0, i);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var storyLine = [
      AnimatedScene(animation: _animation),
      const SizedBox(height: 40),
      AnimatedOpacity(
        opacity: opacityLevel,
        duration: const Duration(seconds: 1),
        child: Container(
          width: 300,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(color: Colors.white),
          ),
          child: Text(
            displayedText,
            style: GoogleFonts.pressStart2p(
              textStyle: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
      const SizedBox(height: 40),
      AnimatedOpacity(
        opacity: opacityLevel,
        duration: Duration(seconds: 1),
        child: storyline[currentScene]['options'].isEmpty
            ? ElevatedButton(
                onPressed: _restartGame,
                child: Text(
                  'Restart',
                  style: GoogleFonts.pressStart2p(
                    textStyle: const TextStyle(color: Colors.white),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  side: BorderSide(color: Colors.white),
                ),
              )
            : ChoiceButtons(
                options: storyline[currentScene]['options'].keys.toList(),
                onOptionSelected: _onOptionSelected
              ),
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: storyLine,
          ),
        ),
      ),
    );
  }
}
