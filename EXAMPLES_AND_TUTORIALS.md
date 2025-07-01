# Examples and Tutorials

## 📚 Table of Contents
- [Basic Storyline Examples](#basic-storyline-examples)
- [Advanced Function Implementations](#advanced-function-implementations)  
- [UI Customization Examples](#ui-customization-examples)
- [Animation Patterns](#animation-patterns)
- [Game Mechanics Examples](#game-mechanics-examples)
- [Complete Mini-Game Tutorial](#complete-mini-game-tutorial)

## Basic Storyline Examples

### 1. Simple Linear Story
A straightforward story with no branching paths:

```dart
Map<String, dynamic> linearStory = {
  'start': {
    'imagePath': 'assets/sprites/house.png',
    'description': 'You wake up in your cottage. Today feels different.',
    'options': {
      'Step Outside': {
        'nextScene': 'outside',
        'closingFunctions': [],
        'parameters': []
      }
    },
    'openingFunction': ['playSound'],
    'parameters': ['morning_birds.wav']
  },
  
  'outside': {
    'imagePath': 'assets/sprites/village.png', 
    'description': 'The village is unusually quiet. Something is wrong.',
    'options': {
      'Investigate': {
        'nextScene': 'mystery',
        'closingFunctions': [],
        'parameters': []
      }
    },
    'openingFunction': [],
    'parameters': []
  },
  
  'mystery': {
    'imagePath': 'assets/sprites/empty_street.png',
    'description': 'Everyone has vanished. You are completely alone.',
    'options': {}, // Empty options = game over/restart
    'openingFunction': ['endGame'],
    'parameters': []
  }
};
```

### 2. Branching Narrative with Consequences
Choices that affect the story outcome:

```dart
Map<String, dynamic> branchingStory = {
  'crossroads': {
    'imagePath': 'assets/sprites/crossroads.png',
    'description': 'You reach a crossroads. A wounded traveler lies nearby.',
    'options': {
      'Help the Traveler': {
        'nextScene': 'good_path',
        'closingFunctions': ['modifyHealth', 'addItemToInventory'],
        'parameters': [-5, 'Karma Point']
      },
      'Ignore and Continue': {
        'nextScene': 'neutral_path',
        'closingFunctions': [],
        'parameters': []
      },
      'Rob the Traveler': {
        'nextScene': 'evil_path',
        'closingFunctions': ['addItemToInventory', 'modifyHealth'],
        'parameters': ['Stolen Gold', -10]
      }
    },
    'openingFunction': [],
    'parameters': []
  },
  
  'good_path': {
    'imagePath': 'assets/sprites/helping_hand.png',
    'description': 'The traveler thanks you and gives you a magic amulet.',
    'options': {
      'Continue Journey': {
        'nextScene': 'good_ending',
        'closingFunctions': ['addItemToInventory'],
        'parameters': ['Magic Amulet']
      }
    },
    'openingFunction': ['playSound'],
    'parameters': ['blessing_sound.wav']
  },
  
  'evil_path': {
    'imagePath': 'assets/sprites/dark_path.png',
    'description': 'Your cruel act weighs heavily on your conscience.',
    'options': {
      'Continue': {
        'nextScene': 'bad_ending',
        'closingFunctions': [],
        'parameters': []
      }
    },
    'openingFunction': ['changeBackground'],
    'parameters': ['assets/sprites/dark_clouds.png']
  }
};
```

### 3. Puzzle/Mystery Scene
A scene requiring player investigation:

```dart
'library_puzzle': {
  'imagePath': 'assets/sprites/library.png',
  'description': 'Ancient books surround you. A riddle is carved into the wall: "What has keys but no locks, space but no room?"',
  'options': {
    'Answer: Piano': {
      'nextScene': 'puzzle_solved',
      'closingFunctions': ['playSound', 'addItemToInventory'],
      'parameters': ['success_chime.wav', 'Ancient Key']
    },
    'Answer: Map': {
      'nextScene': 'puzzle_failed',
      'closingFunctions': ['playSound'],
      'parameters': ['failure_buzz.wav']
    },
    'Answer: Computer': {
      'nextScene': 'puzzle_failed',
      'closingFunctions': ['playSound'],
      'parameters': ['failure_buzz.wav']
    },
    'Leave Without Answering': {
      'nextScene': 'library_exit',
      'closingFunctions': [],
      'parameters': []
    }
  },
  'openingFunction': ['playSound'],
  'parameters': ['mysterious_ambience.wav']
}
```

## Advanced Function Implementations

### 1. Inventory Management System

```dart
// In lib/modules/functions.dart

List<String> playerInventory = [];
Map<String, int> playerStats = {
  'health': 100,
  'mana': 50,
  'gold': 0
};

void addItemToInventory(String item) {
  playerInventory.add(item);
  print('Added $item to inventory. Current items: $playerInventory');
}

void removeItemFromInventory(String item) {
  if (playerInventory.contains(item)) {
    playerInventory.remove(item);
    print('Removed $item from inventory');
  } else {
    print('$item not found in inventory');
  }
}

void modifyPlayerStat(String stat, int amount) {
  if (playerStats.containsKey(stat)) {
    playerStats[stat] = (playerStats[stat]! + amount).clamp(0, 999);
    print('$stat changed by $amount. New value: ${playerStats[stat]}');
  }
}

void showInventory() {
  print('=== INVENTORY ===');
  print('Items: ${playerInventory.join(', ')}');
  print('Health: ${playerStats['health']}');
  print('Mana: ${playerStats['mana']}');
  print('Gold: ${playerStats['gold']}');
  print('================');
}

// Add to triggerFunction:
case 'removeItem':
  removeItemFromInventory(parameter as String);
  break;
case 'modifyStats':
  Map<String, dynamic> changes = parameter as Map<String, dynamic>;
  changes.forEach((stat, amount) => modifyPlayerStat(stat, amount));
  break;
case 'showInventory':
  showInventory();
  break;
```

### 2. Combat System

```dart
// Combat functions
int enemyHealth = 100;
int playerAttackPower = 20;

void combatAttack(Map<String, dynamic> combatData) {
  String attackType = combatData['type'];
  int damage = combatData['damage'];
  
  switch (attackType) {
    case 'player_attack':
      enemyHealth -= damage;
      print('You deal $damage damage! Enemy health: $enemyHealth');
      break;
    case 'enemy_attack':
      modifyPlayerStat('health', -damage);
      print('Enemy deals $damage damage!');
      break;
  }
  
  if (enemyHealth <= 0) {
    print('Enemy defeated!');
    triggerFunction('addItemToInventory', parameter: 'Victory Trophy');
  }
}

// Usage in storyline:
'combat_scene': {
  'description': 'A wild beast blocks your path!',
  'options': {
    'Attack': {
      'nextScene': 'combat_result',
      'closingFunctions': ['combatAttack'],
      'parameters': [{'type': 'player_attack', 'damage': 25}]
    },
    'Defend': {
      'nextScene': 'defend_result', 
      'closingFunctions': ['modifyStats'],
      'parameters': [{'health': 5}] // Gain health by defending
    }
  }
}
```

### 3. Random Events System

```dart
import 'dart:math';

void triggerRandomEvent(String eventType) {
  Random random = Random();
  
  switch (eventType) {
    case 'treasure_find':
      List<String> treasures = ['Gold Coin', 'Magic Gem', 'Healing Potion', 'Ancient Scroll'];
      String foundTreasure = treasures[random.nextInt(treasures.length)];
      addItemToInventory(foundTreasure);
      break;
      
    case 'weather_change':
      List<String> weather = ['sunny', 'rainy', 'stormy', 'foggy'];
      String newWeather = weather[random.nextInt(weather.length)];
      changeBackground('assets/sprites/weather_$newWeather.png');
      break;
      
    case 'encounter':
      int encounterRoll = random.nextInt(100);
      if (encounterRoll < 30) {
        playSound('enemy_growl.wav');
      } else if (encounterRoll < 60) {
        playSound('friendly_npc.wav');
      } else {
        playSound('mysterious_sound.wav');
      }
      break;
  }
}

// Usage:
'forest_exploration': {
  'openingFunction': ['triggerRandomEvent'],
  'parameters': ['treasure_find'],
  'options': {
    'Continue Exploring': {
      'nextScene': 'deeper_forest',
      'closingFunctions': ['triggerRandomEvent'],
      'parameters': ['encounter']
    }
  }
}
```

## UI Customization Examples

### 1. Custom Animated Button

```dart
// Create a new file: lib/modules/custom_button.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PulsingButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  
  const PulsingButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  _PulsingButtonState createState() => _PulsingButtonState();
}

class _PulsingButtonState extends State<PulsingButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 1000),
      vsync: this,
    )..repeat(reverse: true);
    
    _animation = Tween<double>(begin: 0.8, end: 1.2).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut)
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.scale(
          scale: _animation.value,
          child: GestureDetector(
            onTap: widget.onPressed,
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.purple.withOpacity(0.5),
                    blurRadius: 10,
                    spreadRadius: 2,
                  )
                ],
              ),
              child: Text(
                widget.text,
                style: GoogleFonts.pressStart2p(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
```

### 2. Particle Effect Background

```dart
// lib/modules/particle_background.dart
import 'package:flutter/material.dart';
import 'dart:math';

class ParticleBackground extends StatefulWidget {
  final Widget child;
  
  const ParticleBackground({Key? key, required this.child}) : super(key: key);

  @override
  _ParticleBackgroundState createState() => _ParticleBackgroundState();
}

class _ParticleBackgroundState extends State<ParticleBackground>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  List<Particle> particles = [];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    )..repeat();
    
    // Initialize particles
    for (int i = 0; i < 50; i++) {
      particles.add(Particle());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return CustomPaint(
              painter: ParticlePainter(particles),
              size: Size.infinite,
            );
          },
        ),
        widget.child,
      ],
    );
  }
}

class Particle {
  double x = Random().nextDouble();
  double y = Random().nextDouble();
  double speed = Random().nextDouble() * 0.002 + 0.001;
  double opacity = Random().nextDouble() * 0.5 + 0.3;
  
  void update() {
    y -= speed;
    if (y < 0) {
      y = 1.0;
      x = Random().nextDouble();
    }
  }
}

class ParticlePainter extends CustomPainter {
  final List<Particle> particles;
  
  ParticlePainter(this.particles);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.white.withOpacity(0.3);
    
    for (Particle particle in particles) {
      particle.update();
      canvas.drawCircle(
        Offset(particle.x * size.width, particle.y * size.height),
        2.0,
        paint..color = Colors.white.withOpacity(particle.opacity),
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
```

## Animation Patterns

### 1. Screen Transition Effects

```dart
// lib/modules/screen_transitions.dart
import 'package:flutter/material.dart';

class FadeTransition extends StatefulWidget {
  final Widget child;
  final Duration duration;
  
  const FadeTransition({
    Key? key,
    required this.child,
    this.duration = const Duration(milliseconds: 500),
  }) : super(key: key);

  @override
  _FadeTransitionState createState() => _FadeTransitionState();
}

class _FadeTransitionState extends State<FadeTransition>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: widget.duration, vsync: this);
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn)
    );
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Opacity(
          opacity: _animation.value,
          child: widget.child,
        );
      },
    );
  }
}

// Usage in MyGameScreen:
@override
Widget build(BuildContext context) {
  return FadeTransition(
    child: Scaffold(
      // ... existing scaffold content
    ),
  );
}
```

### 2. Text Typewriter with Sound

```dart
// Enhanced typewriter effect with sound
void _revealTextWithSound() async {
  for (int i = 0; i <= fullText.length; i++) {
    await Future.delayed(const Duration(milliseconds: 50));
    
    setState(() {
      if (i >= 0 && i <= fullText.length) {
        displayedText = fullText.substring(0, i);
        
        // Play typing sound every few characters
        if (i % 3 == 0 && i > 0) {
          triggerFunction('playSound', parameter: 'typewriter_click.wav');
        }
      }
    });
  }
  
  // Play completion sound
  triggerFunction('playSound', parameter: 'text_complete.wav');
}
```

## Game Mechanics Examples

### 1. Conditional Story Paths

```dart
// Checking inventory/stats for scene access
Map<String, dynamic> conditionalStory = {
  'locked_door': {
    'description': 'A heavy door blocks your path. It requires a key.',
    'options': {}, // Will be populated dynamically
    'openingFunction': ['checkInventoryForKey'],
    'parameters': []
  }
};

void checkInventoryForKey() {
  Map<String, dynamic> scene = currentAct['locked_door'];
  
  if (playerInventory.contains('Ancient Key')) {
    scene['options'] = {
      'Use Ancient Key': {
        'nextScene': 'secret_chamber',
        'closingFunctions': ['removeItem'],
        'parameters': ['Ancient Key']
      },
      'Save Key for Later': {
        'nextScene': 'return_later',
        'closingFunctions': [],
        'parameters': []
      }
    };
  } else {
    scene['options'] = {
      'Look for Another Way': {
        'nextScene': 'find_key_quest',
        'closingFunctions': [],
        'parameters': []
      },
      'Return Later': {
        'nextScene': 'village_return',
        'closingFunctions': [],
        'parameters': []
      }
    };
  }
}
```

### 2. Time-Based Events

```dart
// lib/modules/time_system.dart
class GameTime {
  static DateTime gameStart = DateTime.now();
  static int daysPassed = 0;
  
  static void advanceTime(int minutes) {
    // Game logic for time passage
    if (minutes >= 1440) { // 24 hours = 1440 minutes
      daysPassed += minutes ~/ 1440;
      triggerFunction('dayPassed', parameter: daysPassed);
    }
  }
  
  static bool isTimeOfDay(String timeOfDay) {
    int currentHour = DateTime.now().hour;
    switch (timeOfDay) {
      case 'morning':
        return currentHour >= 6 && currentHour < 12;
      case 'afternoon':
        return currentHour >= 12 && currentHour < 18;
      case 'evening':
        return currentHour >= 18 && currentHour < 22;
      case 'night':
        return currentHour >= 22 || currentHour < 6;
      default:
        return false;
    }
  }
}

// Usage in storyline:
'village_square': {
  'description': 'The village square changes throughout the day.',
  'openingFunction': ['checkTimeOfDay'],
  'parameters': []
}

void checkTimeOfDay() {
  String currentDescription;
  String backgroundImage;
  
  if (GameTime.isTimeOfDay('morning')) {
    currentDescription = 'The village square bustles with morning activity.';
    backgroundImage = 'assets/sprites/square_morning.png';
  } else if (GameTime.isTimeOfDay('night')) {
    currentDescription = 'The village square is eerily quiet at night.';
    backgroundImage = 'assets/sprites/square_night.png';
  } else {
    currentDescription = 'The village square has moderate activity.';
    backgroundImage = 'assets/sprites/square_day.png';
  }
  
  currentAct['village_square']['description'] = currentDescription;
  currentAct['village_square']['imagePath'] = backgroundImage;
}
```

## Complete Mini-Game Tutorial

Let's create a simple "Escape the Dungeon" mini-game from scratch:

### Step 1: Define the Story Structure

```dart
// Add to lib/storylines/storyline.dart
Map<String, dynamic> dungeonEscape = {
  'dungeon_start': {
    'imagePath': 'assets/sprites/dungeon_cell.png',
    'description': 'You wake up in a dark dungeon cell. The door is locked, but you notice something glinting in the corner.',
    'options': {
      'Examine the Glinting Object': {
        'nextScene': 'find_lockpick',
        'closingFunctions': [],
        'parameters': []
      },
      'Try to Force the Door': {
        'nextScene': 'door_attempt',
        'closingFunctions': ['modifyStats'],
        'parameters': [{'health': -5}]
      },
      'Shout for Help': {
        'nextScene': 'shout_result',
        'closingFunctions': ['playSound'],
        'parameters': ['echo_sound.wav']
      }
    },
    'openingFunction': ['playSound'],
    'parameters': ['dungeon_ambience.wav']
  },
  
  'find_lockpick': {
    'imagePath': 'assets/sprites/lockpick.png',
    'description': 'You find a rusty lockpick! This might help you escape.',
    'options': {
      'Use Lockpick on Door': {
        'nextScene': 'lockpick_attempt',
        'closingFunctions': ['addItemToInventory'],
        'parameters': ['Rusty Lockpick']
      }
    },
    'openingFunction': ['playSound'],
    'parameters': ['item_found.wav']
  },
  
  'lockpick_attempt': {
    'imagePath': 'assets/sprites/picking_lock.png',
    'description': 'You carefully work the lockpick... Click! The door opens.',
    'options': {
      'Step into the Corridor': {
        'nextScene': 'corridor',
        'closingFunctions': ['removeItem', 'playSound'],
        'parameters': ['Rusty Lockpick', 'door_open.wav']
      }
    },
    'openingFunction': [],
    'parameters': []
  },
  
  'corridor': {
    'imagePath': 'assets/sprites/dungeon_corridor.png',
    'description': 'A long corridor stretches before you. You see light at the end, but hear footsteps approaching.',
    'options': {
      'Run Toward the Light': {
        'nextScene': 'escape_attempt',
        'closingFunctions': ['triggerRandomEvent'],
        'parameters': ['encounter']
      },
      'Hide in the Shadows': {
        'nextScene': 'hide_success',
        'closingFunctions': ['playSound'],
        'parameters': ['hiding_breath.wav']
      },
      'Confront the Footsteps': {
        'nextScene': 'guard_encounter',
        'closingFunctions': [],
        'parameters': []
      }
    },
    'openingFunction': ['playSound'],
    'parameters': ['footsteps_distant.wav']
  },
  
  'escape_attempt': {
    'imagePath': 'assets/sprites/exit_door.png',
    'description': 'You sprint toward the exit and burst through the door into daylight. Freedom!',
    'options': {}, // Game ends here
    'openingFunction': ['playSound', 'addItemToInventory'],
    'parameters': ['victory_fanfare.wav', 'Freedom']
  },
  
  'hide_success': {
    'imagePath': 'assets/sprites/hiding.png',
    'description': 'A guard walks past without noticing you. Once he\'s gone, you sneak to the exit.',
    'options': {
      'Sneak to Exit': {
        'nextScene': 'stealth_escape',
        'closingFunctions': [],
        'parameters': []
      }
    },
    'openingFunction': [],
    'parameters': []
  },
  
  'stealth_escape': {
    'imagePath': 'assets/sprites/sneaking.png',
    'description': 'You successfully sneak past all the guards and escape the dungeon!',
    'options': {},
    'openingFunction': ['playSound', 'addItemToInventory'],
    'parameters': ['stealth_success.wav', 'Master Thief Badge']
  },
  
  'guard_encounter': {
    'imagePath': 'assets/sprites/dungeon_guard.png',
    'description': 'A burly guard appears! "Halt! Who goes there?"',
    'options': {
      'Fight the Guard': {
        'nextScene': 'combat_guard',
        'closingFunctions': ['combatAttack'],
        'parameters': [{'type': 'player_attack', 'damage': 30}]
      },
      'Try to Bluff': {
        'nextScene': 'bluff_attempt',
        'closingFunctions': ['triggerRandomEvent'],
        'parameters': ['bluff_check']
      },
      'Surrender': {
        'nextScene': 'capture',
        'closingFunctions': ['playSound'],
        'parameters': ['chains_clinking.wav']
      }
    },
    'openingFunction': ['playSound'],
    'parameters': ['guard_challenge.wav']
  }
};
```

### Step 2: Add Supporting Functions

```dart
// Add to lib/modules/functions.dart

void dungeonBluffCheck() {
  Random random = Random();
  int bluffRoll = random.nextInt(100);
  
  if (bluffRoll > 50) {
    // Successful bluff
    currentAct['bluff_attempt'] = {
      'imagePath': 'assets/sprites/confused_guard.png',
      'description': 'The guard looks confused. "Oh, you must be the new recruit. Carry on!"',
      'options': {
        'Walk Past Casually': {
          'nextScene': 'bluff_success',
          'closingFunctions': ['playSound'],
          'parameters': ['success_chime.wav']
        }
      },
      'openingFunction': [],
      'parameters': []
    };
  } else {
    // Failed bluff
    currentAct['bluff_attempt'] = {
      'imagePath': 'assets/sprites/angry_guard.png',
      'description': 'The guard doesn\'t buy it. "Nice try, prisoner!"',
      'options': {
        'Fight': {
          'nextScene': 'combat_guard',
          'closingFunctions': ['combatAttack'],
          'parameters': [{'type': 'player_attack', 'damage': 20}]
        },
        'Run': {
          'nextScene': 'chase_scene',
          'closingFunctions': ['playSound'],
          'parameters': ['running_footsteps.wav']
        }
      },
      'openingFunction': [],
      'parameters': []
    };
  }
}

// Add to triggerFunction switch:
case 'dungeonBluffCheck':
  dungeonBluffCheck();
  break;
```

### Step 3: Integrate with Main Game

```dart
// In lib/game_screen.dart, modify the initial scene:
String currentScene = 'dungeon_start'; // Change from 'start'

// Or create a scene selection menu:
'game_select': {
  'imagePath': 'assets/sprites/menu_background.png',
  'description': 'Choose your adventure:',
  'options': {
    'Forest Adventure': {
      'nextScene': 'start',
      'closingFunctions': [],
      'parameters': []
    },
    'Dungeon Escape': {
      'nextScene': 'dungeon_start',
      'closingFunctions': [],
      'parameters': []
    }
  },
  'openingFunction': [],
  'parameters': []
}
```

### Step 4: Test Your Mini-Game

1. Run the application: `flutter run`
2. Navigate through different paths
3. Test all choice combinations
4. Verify function calls work correctly
5. Check that assets load properly

This complete example demonstrates:
- Branching narratives
- Inventory management
- Random events
- Combat mechanics
- Multiple ending scenarios
- Sound integration
- Conditional story paths

You can expand this by adding:
- Save/load functionality
- More complex combat
- Character stats progression
- Multiple difficulty levels
- Achievement system

---

## Tips for Creating Engaging Stories

1. **Start Simple**: Begin with linear stories before adding complex branching
2. **Test Early**: Playtest each scene as you build it
3. **Use Functions Sparingly**: Don't overwhelm with too many function calls
4. **Plan Your Assets**: Prepare all images and sounds before coding
5. **Consider Mobile**: Keep text concise for mobile screens
6. **Add Polish**: Small details like sounds and animations matter
7. **Player Agency**: Ensure choices feel meaningful and impactful

Happy game development! 🎮