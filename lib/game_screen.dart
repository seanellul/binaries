import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'storylines/storyline.dart';
import 'modules/animations.dart';
import 'modules/functions.dart';
import 'modules/choice_buttons.dart';

class MyGameScreen extends StatefulWidget {
  const MyGameScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyGameScreenState createState() => _MyGameScreenState();
}

class _MyGameScreenState extends State<MyGameScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  String currentScene = 'start';
  List<Map<String, String>> storylineLog = [];
  bool isTransitioning = false;
  double opacityLevel = 1.0;
  String displayedText = '';
  String fullText = '';
  String selectedOption = '';
  String imagePath = currentAct['start']['imagePath'];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 3000), // Slow animation
      vsync: this,
    )..repeat(reverse: true);
    _animation = Tween<double>(begin: 0.0, end: 10.0).animate(_controller);
    _triggerOpeningFunction(currentScene);
    fullText = currentAct[currentScene]['description'];
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
      opacityLevel = 0.05;
    });

    await Future.delayed(const Duration(milliseconds: 5000));

    setState(() {
      //Adds the description, and chosen option, to the storylineLog to save the user's history.
      storylineLog.add({
        'description': currentAct[currentScene]['description'],
        'option': option,
      });
      
      // ignore: avoid_print
      print(storylineLog);

      //Triggers functions at the closing of the last scene.
      _triggerClosingFunctions(currentScene, option);

      //Changes currentScene to the descriptor found in the options 'nextScene'. Stories move with these tags.
      currentScene = currentAct[currentScene]['options'][option]['nextScene'];
      fullText = currentAct[currentScene]['description'];

      if (currentAct[currentScene]['imagePath'] != null) {
        imagePath = currentAct[currentScene]['imagePath'];
      } else {
        imagePath = 'assets/sprites/rendering_issue.png';
      }

      _triggerOpeningFunction(currentScene);
    });

    await Future.delayed(const Duration(milliseconds: 500));

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
      fullText = currentAct[currentScene]['description'];
      displayedText = '';
      _revealText();
    });
  }

  void _triggerOpeningFunction(String scene) {
    if (currentAct[scene].containsKey('openingFunction')) {
      for (int i = 0; i < currentAct[scene]['openingFunction'].length; i++) {
        String functionName = currentAct[scene]['openingFunction'][i];
        dynamic parameter = currentAct[scene]['parameters'][i];
        triggerFunction(functionName, parameter: parameter);
      }
    }
  }

  void _triggerClosingFunctions(String scene, String option) {
    if (currentAct[scene]['options'][option].containsKey('closingFunctions')) {
      for (int i = 0;
          i < currentAct[scene]['options'][option]['closingFunctions'].length;
          i++) {
        String functionName =
            currentAct[scene]['options'][option]['closingFunctions'][i];
        dynamic parameter =
            currentAct[scene]['options'][option]['parameters'][i];
        triggerFunction(functionName, parameter: parameter);
      }
    }
  }

  void _revealText() async {
    for (int i = 0; i <= fullText.length; i++) {
      await Future.delayed(const Duration(milliseconds: 20));
      setState(() {
        // Add a conditional check to ensure 'i' is within bounds
        if (i >= 0 && i <= fullText.length) {
          displayedText = fullText.substring(0, i);
        } else {
          // Handle the case where 'i' is out of bounds (shouldn't happen in this loop)
          // ignore: avoid_print
          print("Index out of bounds: $i");
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var storyLine = [
      AnimatedScene(animation: _animation, imagePath: imagePath),
      const SizedBox(height: 40),
      AnimatedOpacity(
        opacity: opacityLevel,
        duration: const Duration(seconds: 1),
        child: Container(
          width: 400,
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
        duration: const Duration(seconds: 1),
        child: currentAct[currentScene]['options'].isEmpty
            ? ElevatedButton(
                onPressed: _restartGame,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  side: const BorderSide(color: Colors.white),
                ),
                child: Text(
                  'Restart',
                  style: GoogleFonts.pressStart2p(
                    textStyle: const TextStyle(color: Colors.white),
                  ),
                ),
              )
            : ChoiceButtons(
                options: currentAct[currentScene]['options'].keys.toList(),
                onOptionSelected: _onOptionSelected),
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
