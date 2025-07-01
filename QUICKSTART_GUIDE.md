# Quickstart Guide - Binaries Game Engine

## 🚀 Get Started in 5 Minutes

### Prerequisites
- Flutter SDK 3.4.3 or higher
- Dart 3.0+
- Your favorite IDE (VS Code, Android Studio, IntelliJ)

### Installation

1. **Clone and Setup**
   ```bash
   git clone <repository-url>
   cd binaries
   flutter pub get
   ```

2. **Run the Application**
   ```bash
   flutter run
   ```

That's it! You should see the game running with the default storyline.

## 🎮 Creating Your First Story Scene

### Step 1: Add to Storyline Data

Open `lib/storylines/storyline.dart` and add your scene to the `currentAct` map:

```dart
'my_new_scene': {
  'imagePath': 'assets/sprites/forest.png',
  'description': 'You find yourself in a mysterious place...',
  'options': {
    'Look Around': {
      'nextScene': 'explore_area',
      'closingFunctions': [],
      'parameters': []
    },
    'Leave Immediately': {
      'nextScene': 'start',
      'closingFunctions': ['playSound'],
      'parameters': ['footsteps.wav']
    }
  },
  'openingFunction': [],
  'parameters': []
}
```

### Step 2: Link to Existing Scene

Find any existing scene and add a choice that leads to your new scene:

```dart
'some_existing_scene': {
  // ... existing content ...
  'options': {
    // ... existing options ...
    'Discover New Area': {
      'nextScene': 'my_new_scene',
      'closingFunctions': [],
      'parameters': []
    }
  }
}
```

### Step 3: Test Your Scene

Run the app and navigate to your new scene to test it works correctly.

## 🖼️ Adding Custom Images

### Step 1: Add Image Asset

1. Place your image in `assets/sprites/` directory
2. Update `pubspec.yaml`:

```yaml
flutter:
  assets:
    - assets/sprites/
    - assets/sprites/your_new_image.png  # Optional: specific declaration
```

### Step 2: Use in Scene

```dart
'your_scene': {
  'imagePath': 'assets/sprites/your_new_image.png',
  // ... rest of scene data
}
```

## ⚡ Adding Game Functions

### Step 1: Define Function

Add to `lib/modules/functions.dart`:

```dart
void myCustomFunction(String parameter) {
  print('Custom function called with: $parameter');
  // Add your game logic here
}
```

### Step 2: Register in Dispatcher

Add to the `triggerFunction` switch statement:

```dart
void triggerFunction(String functionName, {dynamic parameter}) {
  switch (functionName) {
    // ... existing cases ...
    case 'myCustomFunction':
      myCustomFunction(parameter as String);
      break;
  }
}
```

### Step 3: Use in Storyline

```dart
'your_scene': {
  'openingFunction': ['myCustomFunction'],
  'parameters': ['Hello World'],
  // ... or in choice options ...
  'options': {
    'Your Choice': {
      'nextScene': 'next_scene',
      'closingFunctions': ['myCustomFunction'],
      'parameters': ['Choice made!']
    }
  }
}
```

## 🎨 Customizing the UI

### Changing Colors

In any widget file, modify the color scheme:

```dart
// Change background color
backgroundColor: Colors.darkBlue,

// Change text color
style: GoogleFonts.pressStart2p(
  textStyle: TextStyle(color: Colors.cyan)
)

// Change border color
border: Border.all(color: Colors.red)
```

### Changing Fonts

Replace `GoogleFonts.pressStart2p` with any other Google Font:

```dart
style: GoogleFonts.orbitron(
  textStyle: TextStyle(color: Colors.white, fontSize: 18)
)
```

### Modifying Animations

Adjust animation timing in `MyGameScreen`:

```dart
_controller = AnimationController(
  duration: const Duration(milliseconds: 5000), // Slower breathing
  vsync: this,
);

// Or change animation range
_animation = Tween<double>(begin: 0.0, end: 20.0).animate(_controller);
```

## 📱 Common Patterns

### Creating Branching Storylines

```dart
// Main path
'forest_entrance': {
  'options': {
    'Go Left': {'nextScene': 'left_path'},
    'Go Right': {'nextScene': 'right_path'},
    'Go Straight': {'nextScene': 'straight_path'}
  }
},

// Different paths that can reconverge
'left_path': {
  'description': 'You took the left path...',
  'options': {
    'Continue': {'nextScene': 'forest_clearing'}
  }
},

'right_path': {
  'description': 'You took the right path...',
  'options': {
    'Continue': {'nextScene': 'forest_clearing'}
  }
}
```

### Implementing Game Over Scenes

```dart
'game_over': {
  'description': 'Your adventure ends here...',
  'options': {}, // Empty options triggers restart button
}
```

### Using Function Combinations

```dart
'treasure_found': {
  'openingFunction': ['addItemToInventory', 'playSound', 'modifyHealth'],
  'parameters': ['Golden Sword', 'treasure_sound.wav', 50],
  'options': {
    'Continue': {
      'nextScene': 'next_area',
      'closingFunctions': ['playSound'],
      'parameters': ['footsteps.wav']
    }
  }
}
```

## 🔧 Debugging Tips

### Check Console Output

The game logs function calls and scene transitions:

```bash
flutter run
# Watch for:
# - "Adding [item] to inventory"
# - "Modifying health by [amount]"  
# - "Playing sound: [file]"
```

### Validate Scene Links

Ensure all `nextScene` values point to valid scene IDs:

```dart
// This will cause an error:
'nextScene': 'non_existent_scene'

// Make sure the target scene exists:
'nextScene': 'forest_clearing' // ✅ Must exist in currentAct
```

### Test Image Paths

Verify all `imagePath` references point to existing assets:

```dart
// Check that this file exists:
'imagePath': 'assets/sprites/your_image.png'
```

## 📦 Building for Distribution

### Android APK

```bash
flutter build apk --release
```

### iOS App

```bash
flutter build ios --release
```

### Web App

```bash
flutter build web --release
```

### Desktop Apps

```bash
# Windows
flutter build windows --release

# macOS  
flutter build macos --release

# Linux
flutter build linux --release
```

## 🎯 Next Steps

1. **Explore the codebase** - Read `API_DOCUMENTATION.md` for comprehensive API details
2. **Check component reference** - See `COMPONENT_REFERENCE.md` for detailed widget documentation
3. **Experiment with animations** - Modify the `AnimatedScene` widget
4. **Add sound effects** - Implement audio using packages like `audioplayers`
5. **Create complex storylines** - Build multi-act adventures with branching narratives

## 🤔 Common Questions

**Q: How do I create multiple acts/chapters?**
A: Currently, the game uses a single `currentAct`. To add multiple acts, you'd need to implement act-switching logic in the game screen.

**Q: Can I save game progress?**
A: The `storylineLog` tracks player choices. You can persist this using `shared_preferences` or local storage.

**Q: How do I add sound effects?**
A: Implement audio in the `playSound` function using packages like `audioplayers` or `flutter_sound`.

**Q: Can I customize the choice button layout?**
A: Yes! Modify the `ChoiceButtons` widget to change layout, styling, or behavior.

**Q: How do I handle very long text?**
A: The text container can be wrapped in a `Scrollable` widget or you can split long text across multiple scenes.

---

**Happy Game Building! 🎮**

For more detailed information, see the complete API documentation and component references.