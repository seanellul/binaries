import 'package:flutter/material.dart';

/// Represents a single scene in the game.
/// Each scene has a description and a set of options.
/// If a function call is attached to a scene, it will be triggered.
class Scene {
  final String description;
  final Map<String, String> options;
  final Function? functionCall;

  Scene({
    required this.description,
    required this.options,
    this.functionCall,
  });
}

/// Represents an act, which is a part of a chapter.
/// An act contains multiple scenes.
class Act {
  final Map<String, Scene> scenes;

  Act({required this.scenes});
}

/// Represents a chapter in the game.
/// A chapter is composed of multiple acts.
class Chapter {
  final Map<String, Act> acts;

  Chapter({required this.acts});
}

/// Represents the entire storyline of the game.
/// The storyline includes chapters and a history of decisions made by the player.
class Storyline {
  final List<Chapter> chapters;
  final List<Map<String, String>> decisionHistory;

  Storyline({
    required this.chapters,
    required this.decisionHistory,
  });

  /// Adds a decision to the decision history.
  void addDecision(String description, String optionChosen) {
    decisionHistory.add({'description': description, 'optionChosen': optionChosen});
  }
}

// Example Usage:

void main() {
  // Define scenes
  Scene end = Scene(description: 'The story ends here. Thanks for playing!', options: {});
  
  Scene start = Scene(
    description: 'Suddenly you hear a mighty roar...',
    options: {
      'Stand and Fight': 'fight_orc',
      'Run Away': 'run_away',
    },
  );
  
  Scene fightOrc = Scene(
    description: 'You decide to stand and fight the orc. The battle is fierce...',
    options: {
      'Attack': 'attack_orc',
      'Defend': 'defend',
    },
  );
  
  Scene runAway = Scene(
    description: 'You choose to run away, hoping to find safety...',
    options: {
      'Hide': 'hide',
      'Keep Running': 'keep_running',
    },
  );
  
  Scene attackOrc = Scene(
    description: 'You attack the orc with all your might...',
    options: {
      'Continue': 'end',
    },
  );
  
  Scene defend = Scene(
    description: 'You defend yourself against the orc...',
    options: {
      'Continue': 'end',
    },
  );
  
  Scene hide = Scene(
    description: 'You hide behind a tree, hoping the orc does not find you...',
    options: {
      'Continue': 'end',
    },
  );
  
  Scene keepRunning = Scene(
    description: 'You keep running, not looking back...',
    options: {
      'Continue': 'end',
    },
  );

  // Define acts
  Act act1 = Act(scenes: {
    'start': start,
    'fight_orc': fightOrc,
    'run_away': runAway,
    'attack_orc': attackOrc,
    'defend': defend,
    'hide': hide,
    'keep_running': keepRunning,
    'end': end,
  });

  // Define chapters
  Chapter chapter1 = Chapter(acts: {
    'act1': act1,
  });

  // Define storyline
  Storyline storyline = Storyline(chapters: [chapter1], decisionHistory: []);
}
