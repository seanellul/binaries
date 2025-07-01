# Component Reference Guide

## Widget Components

### AnimatedScene Widget

**File:** `lib/modules/animations.dart`

#### Class Definition
```dart
class AnimatedScene extends StatelessWidget {
  final Animation<double> animation;
  final String imagePath;

  AnimatedScene({required this.animation, required this.imagePath});
}
```

#### Properties

| Property | Type | Required | Description |
|----------|------|----------|-------------|
| `animation` | `Animation<double>` | ✅ | Animation controller for breathing effect (0.0 to 10.0) |
| `imagePath` | `String` | ✅ | Asset path to the background image |

#### Visual Specifications
- **Container Size:** 340×340 pixels
- **Image Size:** 220 + animation.value pixels (base)
- **Frame Size:** 320 + animation.value/2 pixels
- **Animation Range:** 0-10 pixel variation
- **Layering:** Background image below, frame overlay above

#### Implementation Details
```dart
@override
Widget build(BuildContext context) {
  return AnimatedBuilder(
    animation: animation,
    builder: (context, child) {
      return Container(
        width: 340,
        height: 340,
        child: Stack(
          children: [
            // Background image with breathing animation
            Center(
              child: ClipRect(
                child: Container(
                  width: 220 + animation.value,
                  height: 220 + animation.value,
                  child: Image.asset(imagePath, fit: BoxFit.cover),
                ),
              ),
            ),
            // Frame overlay
            Center(
              child: Image.asset(
                'assets/sprites/frame.png',
                width: 320 + animation.value/2,
                height: 320 + animation.value/2,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      );
    },
  );
}
```

#### Usage Examples
```dart
// Basic usage with controller
AnimationController _controller = AnimationController(
  duration: Duration(milliseconds: 3000),
  vsync: this,
)..repeat(reverse: true);

Animation<double> _animation = Tween<double>(
  begin: 0.0, 
  end: 10.0
).animate(_controller);

AnimatedScene(
  animation: _animation,
  imagePath: 'assets/sprites/forest.png'
)
```

---

### ChoiceButtons Widget

**File:** `lib/modules/choice_buttons.dart`

#### Class Definition
```dart
class ChoiceButtons extends StatelessWidget {
  final List<String> options;
  final Function(String) onOptionSelected;

  ChoiceButtons({required this.options, required this.onOptionSelected});
}
```

#### Properties

| Property | Type | Required | Description |
|----------|------|----------|-------------|
| `options` | `List<String>` | ✅ | List of choice text strings to display |
| `onOptionSelected` | `Function(String)` | ✅ | Callback triggered when option is selected |

#### Visual Specifications
- **Button Size:** 150×100 pixels each
- **Spacing:** 10px horizontal margin between buttons
- **Font:** Press Start 2P (Google Fonts)
- **Colors:** White text on black background with white border
- **Layout:** Horizontal row, center-aligned

#### Features
- **Haptic Feedback:** Light impact on tap
- **Responsive:** Automatically adjusts to option count
- **Accessible:** Center-aligned text with adequate contrast

#### Implementation Details
```dart
@override
Widget build(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: options.map((option) {
      return GestureDetector(
        onTap: () {
          HapticFeedback.lightImpact();
          onOptionSelected(option);
        },
        child: Container(
          width: 150,
          height: 100,
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(color: Colors.white),
          ),
          child: Center(
            child: Text(
              option,
              style: GoogleFonts.pressStart2p(
                textStyle: const TextStyle(color: Colors.white),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      );
    }).toList(),
  );
}
```

#### Usage Examples
```dart
// Simple two-choice scenario
ChoiceButtons(
  options: ['Yes', 'No'],
  onOptionSelected: (choice) {
    print('Player chose: $choice');
    navigateToNextScene(choice);
  }
)

// Multiple choice scenario
ChoiceButtons(
  options: ['Attack', 'Defend', 'Run Away', 'Use Item'],
  onOptionSelected: handleCombatChoice
)
```

---

### MyGameScreen Widget

**File:** `lib/game_screen.dart`

#### Class Definition
```dart
class MyGameScreen extends StatefulWidget {
  const MyGameScreen({super.key});
}

class _MyGameScreenState extends State<MyGameScreen> 
    with SingleTickerProviderStateMixin
```

#### State Properties

| Property | Type | Initial Value | Description |
|----------|------|---------------|-------------|
| `_controller` | `AnimationController` | - | Controls scene breathing animation |
| `_animation` | `Animation<double>` | - | 0.0 to 10.0 animation values |
| `currentScene` | `String` | `'start'` | Current storyline scene identifier |
| `storylineLog` | `List<Map<String, String>>` | `[]` | Player choice history |
| `isTransitioning` | `bool` | `false` | Scene transition state flag |
| `opacityLevel` | `double` | `1.0` | UI opacity for transitions |
| `displayedText` | `String` | `''` | Currently shown text content |
| `fullText` | `String` | `''` | Complete text to be revealed |
| `selectedOption` | `String` | `''` | Currently selected choice |
| `imagePath` | `String` | - | Current scene background path |

#### Key Methods

##### initState()
Initializes the widget state and starts the game.

```dart
@override
void initState() {
  super.initState();
  _controller = AnimationController(
    duration: const Duration(milliseconds: 3000),
    vsync: this,
  )..repeat(reverse: true);
  
  _animation = Tween<double>(begin: 0.0, end: 10.0).animate(_controller);
  _triggerOpeningFunction(currentScene);
  fullText = currentAct[currentScene]['description'];
  _revealText();
}
```

##### _onOptionSelected(String option)
Handles player choice selection with full transition logic.

**Flow:**
1. Set selected option and fade UI
2. Wait 5 seconds for player to see choice
3. Log choice in storyline history
4. Execute closing functions
5. Transition to next scene
6. Update background image
7. Execute opening functions
8. Restore UI and reveal new text

##### _revealText()
Creates typewriter effect for text display.

**Parameters:** None
**Behavior:** 
- 20ms delay between characters
- Progressive substring revelation
- Bounds checking for safety

##### _restartGame()
Resets game to initial state.

**Effects:**
- Clears storyline log
- Resets to 'start' scene
- Reinitializes text display
- Triggers opening functions

#### Layout Structure
```dart
Widget build(BuildContext context) {
  var storyLine = [
    AnimatedScene(animation: _animation, imagePath: imagePath),
    const SizedBox(height: 40),
    // Text display container
    AnimatedOpacity(...),
    const SizedBox(height: 40),
    // Choice buttons or restart button
    AnimatedOpacity(...),
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
```

---

## Data Structure Classes

### Scene Class

**File:** `lib/examples/schema.dart`

#### Definition
```dart
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
```

#### Properties

| Property | Type | Required | Description |
|----------|------|----------|-------------|
| `description` | `String` | ✅ | Scene narrative text |
| `options` | `Map<String, String>` | ✅ | Choice text → next scene mapping |
| `functionCall` | `Function?` | ❌ | Optional function to execute |

#### Usage
```dart
Scene village = Scene(
  description: 'You arrive at a peaceful village...',
  options: {
    'Visit the Inn': 'inn_scene',
    'Explore the Market': 'market_scene',
    'Leave Village': 'forest_path'
  },
  functionCall: () => playSound('village_ambience.wav')
);
```

### Act Class

**File:** `lib/examples/schema.dart`

#### Definition
```dart
class Act {
  final Map<String, Scene> scenes;

  Act({required this.scenes});
}
```

#### Properties

| Property | Type | Required | Description |
|----------|------|----------|-------------|
| `scenes` | `Map<String, Scene>` | ✅ | Scene ID → Scene object mapping |

### Chapter Class

**File:** `lib/examples/schema.dart`

#### Definition
```dart
class Chapter {
  final Map<String, Act> acts;

  Chapter({required this.acts});
}
```

### Storyline Class

**File:** `lib/examples/schema.dart`

#### Definition
```dart
class Storyline {
  final List<Chapter> chapters;
  final List<Map<String, String>> decisionHistory;

  Storyline({
    required this.chapters,
    required this.decisionHistory,
  });

  void addDecision(String description, String optionChosen) {
    decisionHistory.add({
      'description': description, 
      'optionChosen': optionChosen
    });
  }
}
```

#### Methods

##### addDecision(String description, String optionChosen)
Records a player decision in the history.

**Parameters:**
- `description`: Scene description text
- `optionChosen`: Selected choice text

---

## Function Reference

### Game Functions Module

**File:** `lib/modules/functions.dart`

#### modifyHealth(int amount)
```dart
void modifyHealth(int amount)
```
Modifies player health by specified amount.

#### addItemToInventory(String item)
```dart
void addItemToInventory(String item)
```
Adds an item to player inventory.

#### playSound(String soundFile)
```dart
void playSound(String soundFile)
```
Plays a sound effect (requires audio implementation).

#### changeBackground(String imagePath)
```dart
void changeBackground(String imagePath)
```
Changes scene background (requires state management integration).

#### endGame()
```dart
void endGame()
```
Triggers game end sequence.

#### triggerFunction(String functionName, {dynamic parameter})
```dart
void triggerFunction(String functionName, {dynamic parameter})
```
Dynamic function dispatcher for storyline events.

**Supported Function Names:**
- `'modifyHealth'` → `modifyHealth(parameter as int)`
- `'addItemToInventory'` → `addItemToInventory(parameter as String)`
- `'playSound'` → `playSound(parameter as String)`
- `'changeBackground'` → `changeBackground(parameter as String)`
- `'endGame'` → `endGame()`

---

## Style Guidelines

### Color Scheme
- **Background:** `Colors.black`
- **Text:** `Colors.white`
- **Borders:** `Colors.white`
- **Opacity Transitions:** `0.05` (hidden) to `1.0` (visible)

### Typography
- **Font Family:** Press Start 2P (Google Fonts)
- **Text Size:** 18px for descriptions, default for choices
- **Alignment:** Center-aligned text in containers

### Spacing
- **Container Padding:** 20px all sides
- **Element Spacing:** 40px between major components
- **Button Margins:** 10px horizontal between choices

### Animation Timing
- **Breathing Effect:** 3000ms duration, reverse repeat
- **Text Revelation:** 20ms per character
- **Opacity Transitions:** 1000ms duration
- **Scene Transitions:** 5000ms delay before transition