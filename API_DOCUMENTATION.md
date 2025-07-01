# Binaries - Flutter Game Engine API Documentation

## Table of Contents
- [Overview](#overview)
- [Project Structure](#project-structure)
- [Core Components](#core-components)
- [Module APIs](#module-apis)
- [Data Structures](#data-structures)
- [Assets Management](#assets-management)
- [Usage Examples](#usage-examples)
- [Development Guide](#development-guide)

## Overview

Binaries is a Flutter-based interactive story game engine that provides a framework for creating text-based adventure games with animated scenes, choice-driven narratives, and dynamic storylines.

### Key Features
- Interactive text-based gameplay with choice mechanics
- Animated scenes with customizable backgrounds and frames
- Modular storyline architecture
- Function-based game events and triggers
- Cross-platform support (Android, iOS, Web, Windows, Linux, macOS)

### Dependencies
- **Flutter SDK**: >=3.4.3 <4.0.0
- **google_fonts**: ^4.0.4 - For retro gaming fonts
- **cupertino_icons**: ^1.0.6 - iOS-style icons

## Project Structure

```
lib/
├── main.dart                    # Application entry point
├── game_screen.dart            # Main game screen component
├── modules/                    # Reusable game modules
│   ├── animations.dart         # Animation components
│   ├── choice_buttons.dart     # Interactive choice buttons
│   └── functions.dart          # Game utility functions
├── storylines/                 # Game narrative content
│   └── storyline.dart          # Main storyline data
└── examples/                   # Schema and examples
    └── schema.dart             # Data structure definitions
```

## Core Components

### MyApp
The root application widget that initializes the Flutter app.

```dart
class MyApp extends StatelessWidget
```

**Constructor:**
```dart
const MyApp({super.key})
```

**Methods:**
- `build(BuildContext context) → Widget`: Returns the MaterialApp with MyGameScreen as home

**Usage:**
```dart
void main() {
  runApp(const MyApp());
}
```

### MyGameScreen
The main game screen that manages the interactive storyline experience.

```dart
class MyGameScreen extends StatefulWidget
```

**Constructor:**
```dart
const MyGameScreen({super.key})
```

**State Management:**
- `currentScene`: Current storyline scene identifier
- `storylineLog`: History of player choices and descriptions
- `isTransitioning`: Boolean flag for scene transitions
- `opacityLevel`: Animation opacity control
- `displayedText`: Currently displayed text content
- `fullText`: Complete text to be revealed
- `selectedOption`: Currently selected player option
- `imagePath`: Current scene background image

**Key Methods:**

#### _onOptionSelected(String option)
Handles player choice selection and scene transitions.

**Parameters:**
- `option` (String): The selected choice text

**Behavior:**
1. Records the choice in storyline log
2. Triggers closing functions for current scene
3. Transitions to next scene
4. Updates background image
5. Triggers opening functions for new scene

#### _triggerOpeningFunction(String scene)
Executes functions when entering a scene.

**Parameters:**
- `scene` (String): Scene identifier

#### _triggerClosingFunctions(String scene, String option)
Executes functions when leaving a scene.

**Parameters:**
- `scene` (String): Current scene identifier
- `option` (String): Selected option

#### _revealText()
Animates text revelation with typewriter effect.

**Features:**
- 20ms delay per character
- Progressive text display
- Graceful error handling for bounds

#### _restartGame()
Resets the game to initial state.

**Effects:**
- Clears storyline log
- Resets to 'start' scene
- Reinitializes text display

## Module APIs

### Animations Module (`lib/modules/animations.dart`)

#### AnimatedScene
A widget that displays animated game scenes with floating frame effects.

```dart
class AnimatedScene extends StatelessWidget
```

**Constructor:**
```dart
AnimatedScene({
  required Animation<double> animation,
  required String imagePath
})
```

**Parameters:**
- `animation`: Animation controller for breathing effect
- `imagePath`: Path to the scene background image

**Features:**
- 340x340 pixel container
- Animated breathing effect (0-10 pixel variation)
- Layered image display with frame overlay
- Responsive scaling

**Usage Example:**
```dart
AnimatedScene(
  animation: _animation,
  imagePath: 'assets/sprites/forest.png'
)
```

### Choice Buttons Module (`lib/modules/choice_buttons.dart`)

#### ChoiceButtons
Interactive choice selection widget for player decisions.

```dart
class ChoiceButtons extends StatelessWidget
```

**Constructor:**
```dart
ChoiceButtons({
  required List<String> options,
  required Function(String) onOptionSelected
})
```

**Parameters:**
- `options`: List of choice text strings
- `onOptionSelected`: Callback function when choice is made

**Features:**
- Retro gaming aesthetic with Press Start 2P font
- Haptic feedback on selection
- 150x100 pixel buttons with 10px margins
- White border on black background

**Usage Example:**
```dart
ChoiceButtons(
  options: ['Continue', 'Go Back'],
  onOptionSelected: (choice) => handleChoice(choice)
)
```

### Functions Module (`lib/modules/functions.dart`)

#### Game Utility Functions

##### modifyHealth(int amount)
Modifies player health by specified amount.

**Parameters:**
- `amount` (int): Health change value (positive or negative)

##### addItemToInventory(String item)
Adds an item to player inventory.

**Parameters:**
- `item` (String): Item name to add

##### playSound(String soundFile)
Plays a sound effect.

**Parameters:**
- `soundFile` (String): Path to sound file

##### changeBackground(String imagePath)
Changes the scene background image.

**Parameters:**
- `imagePath` (String): Path to new background image

##### endGame()
Triggers game end sequence.

##### triggerFunction(String functionName, {dynamic parameter})
Dynamic function dispatcher for storyline events.

**Parameters:**
- `functionName` (String): Function identifier
- `parameter` (dynamic): Optional function parameter

**Supported Functions:**
- `'modifyHealth'` - Requires int parameter
- `'addItemToInventory'` - Requires String parameter
- `'playSound'` - Requires String parameter
- `'changeBackground'` - Requires String parameter
- `'endGame'` - No parameters

**Usage Example:**
```dart
triggerFunction('modifyHealth', parameter: -10);
triggerFunction('addItemToInventory', parameter: 'Magic Sword');
triggerFunction('endGame');
```

## Data Structures

### Scene Schema
Defines the structure for individual story scenes.

```dart
class Scene {
  final String description;
  final Map<String, String> options;
  final Function? functionCall;
}
```

### Storyline Data Format
The main storyline follows this JSON-like structure:

```dart
Map<String, dynamic> currentAct = {
  'scene_id': {
    'type': String,                    // Optional scene type
    'imagePath': String,               // Background image path
    'description': String,             // Scene description text
    'options': {                       // Player choices
      'choice_text': {
        'nextScene': String,           // Target scene ID
        'closingFunctions': List,      // Functions to execute
        'parameters': List             // Function parameters
      }
    },
    'openingFunction': List,           // Functions on scene enter
    'parameters': List                 // Opening function parameters
  }
}
```

### Example Scene Definition:
```dart
'forest_entrance': {
  'imagePath': 'assets/sprites/forest.png',
  'description': 'You stand at the edge of a dark forest...',
  'options': {
    'Enter the Forest': {
      'nextScene': 'forest_path',
      'closingFunctions': ['playSound'],
      'parameters': ['forest_ambience.wav']
    },
    'Turn Back': {
      'nextScene': 'village',
      'closingFunctions': [],
      'parameters': []
    }
  },
  'openingFunction': ['changeBackground'],
  'parameters': ['assets/sprites/forest.png']
}
```

## Assets Management

### Sprite Assets
Located in `assets/sprites/`:

- `forest.png` - Forest background scene
- `library.png` - Library background scene
- `frame.png` - Decorative frame overlay
- `ideas.png` - Additional scene background
- `rendering_issue.png` - Fallback error image

### Asset Integration
Assets are declared in `pubspec.yaml`:

```yaml
flutter:
  assets:
    - assets/sprites/forest.png
    - assets/sprites/frame.png
    - assets/sprites/
```

## Usage Examples

### Creating a New Scene
```dart
'new_scene': {
  'imagePath': 'assets/sprites/your_image.png',
  'description': 'Your scene description here...',
  'options': {
    'Choice 1': {
      'nextScene': 'scene_1',
      'closingFunctions': ['modifyHealth'],
      'parameters': [10]
    },
    'Choice 2': {
      'nextScene': 'scene_2',
      'closingFunctions': ['addItemToInventory', 'playSound'],
      'parameters': ['Healing Potion', 'item_get.wav']
    }
  },
  'openingFunction': ['playSound'],
  'parameters': ['ambient_sound.wav']
}
```

### Adding Custom Functions
To add new game functions:

1. Define the function in `lib/modules/functions.dart`:
```dart
void customFunction(String parameter) {
  // Your function logic here
  print('Custom function called with: $parameter');
}
```

2. Add to the dispatcher:
```dart
void triggerFunction(String functionName, {dynamic parameter}) {
  switch (functionName) {
    // ... existing cases ...
    case 'customFunction':
      customFunction(parameter as String);
      break;
  }
}
```

3. Use in storyline:
```dart
'closingFunctions': ['customFunction'],
'parameters': ['your_parameter']
```

### Implementing Custom Animations
```dart
class CustomAnimatedWidget extends StatelessWidget {
  final Animation<double> animation;
  
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Transform.scale(
          scale: 1.0 + animation.value * 0.1,
          child: YourWidget(),
        );
      },
    );
  }
}
```

## Development Guide

### Setting Up Development Environment

1. **Install Flutter SDK** (>=3.4.3)
2. **Clone the repository**
3. **Install dependencies:**
   ```bash
   flutter pub get
   ```

### Running the Application
```bash
flutter run
```

### Building for Production
```bash
# Android
flutter build apk --release

# iOS
flutter build ios --release

# Web
flutter build web --release

# Desktop
flutter build windows --release
flutter build macos --release
flutter build linux --release
```

### Adding New Storylines

1. **Create storyline data** in `lib/storylines/storyline.dart`
2. **Add required assets** to `assets/sprites/`
3. **Update pubspec.yaml** asset declarations
4. **Test scene transitions** and function calls

### Customizing UI

The game uses **Press Start 2P** font for retro aesthetics. To customize:

```dart
GoogleFonts.pressStart2p(
  textStyle: TextStyle(
    color: Colors.white,
    fontSize: 18
  )
)
```

### Performance Considerations

- **Image assets** should be optimized for mobile devices
- **Animation controllers** are properly disposed to prevent memory leaks
- **Text revelation** uses efficient string operations
- **Scene transitions** include loading states

### Error Handling

The application includes:
- Bounds checking for text revelation
- Fallback images for missing assets
- Graceful handling of invalid scene transitions
- Debug logging for function calls

### Testing

Recommended testing approaches:
- Unit tests for utility functions
- Widget tests for UI components
- Integration tests for storyline flows
- Performance tests for animation smoothness

---

*This documentation covers the public API surface of the Binaries game engine. For implementation details and private methods, refer to the source code comments and inline documentation.*