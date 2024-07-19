final Map<String, dynamic> currentAct = {
  'start': {
    'type':'',
    'imagePath': 'assets/sprites/library.png',
    'description': 'The air in the library is filled with dust, as the faded hardbacks of alchemical books fill the shelves.',
    'options': {
      'Continue': {
        'nextScene': 'begin',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': [],
  },
    'begin': {
          'imagePath': 'assets/sprites/forest.png',
    'description': 'A voice, seemingly reverberating in your head, bouncing across the sinews of your psyche begins to speak...',
    'options': {
      'Clear Your Mind to Listen to the Voice': {
        'nextScene': 'listen',
        'closingFunctions': [],
        'parameters': []
      },
      'Close Your Mind to the Voice': {
        'nextScene': 'fight',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'listen': {
    'description': 'This library is yours to use as you please. Just remember, curioisity has a price.',
    'options': {
      'The voice fades away.': {
        'nextScene': 'start',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'fight': {
    'description': 'You, try, with all your might, to fight the voice back. What do you think of?',
    'options': {
      'Family': {
        'nextScene': 'innkeeper_story',
        'closingFunctions': [],
        'parameters': []
      },
      'Vengeance': {
        'nextScene': 'fireplace_story',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'innkeeper_story': {
    'description': 'The innkeeper tells you a story about a hidden treasure in the forest.',
    'options': {
      'Ask for Directions': {
        'nextScene': 'begin',
        'closingFunctions': [],
        'parameters': []
      },
      'Ignore the Story': {
        'nextScene': 'stay_at_inn',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'fireplace_story': {
    'description': 'You sit by the fire and listen to the travelers\' stories about the forest.',
    'options': {
      'Join the Conversation': {
        'nextScene': 'innkeeper_story',
        'closingFunctions': [],
        'parameters': []
      },
      'Retire to Your Room': {
        'nextScene': 'stay_at_inn',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'stay_at_inn': {
    'description': 'You decide to stay at the inn for the night. It is a restful sleep.',
    'options': {
      'Start Fresh in the Morning': {
        'nextScene': 'start',
        'closingFunctions': [],
        'parameters': []
      },
      'Stay Another Day': {
        'nextScene': 'another_day_at_inn',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'another_day_at_inn': {
    'description': 'You stay another day at the inn, gathering more information about the forest.',
    'options': {
      'Venture into the Forest': {
        'nextScene': 'start',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave the Inn': {
        'nextScene': 'road_to_village',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'road_to_village': {
    'description': 'You decide to take the road to the nearby village. It is a quiet journey.',
    'options': {
      'Visit the Village': {
        'nextScene': 'village_market',
        'closingFunctions': [],
        'parameters': []
      },
      'Return to the Inn': {
        'nextScene': 'roadside_inn',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'village_market': {
    'description': 'The village market is bustling with activity. You see many interesting items for sale.',
    'options': {
      'Buy Provisions': {
        'nextScene': 'start',
        'closingFunctions': [],
        'parameters': []
      },
      'Talk to the Locals': {
        'nextScene': 'village_story',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'village_story': {
    'description': 'The locals tell you stories about the dangers and wonders of the forest.',
    'options': {
      'Head to the Forest': {
        'nextScene': 'start',
        'closingFunctions': [],
        'parameters': []
      },
      'Explore the Village': {
        'nextScene': 'village_exploration',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'village_exploration': {
    'description': 'You spend time exploring the village. It has a rich history and friendly people.',
    'options': {
      'Continue Exploring': {
        'nextScene': 'village_market',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave for the Forest': {
        'nextScene': 'start',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'forest_clearing': {
    'description': 'You find a clearing in the forest. It is calm and peaceful here.',
    'options': {
      'Rest Here': {
        'nextScene': 'rest_in_clearing',
        'closingFunctions': [],
        'parameters': []
      },
      'Explore Further': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'rest_in_clearing': {
    'description': 'You decide to rest in the clearing. The tranquility rejuvenates you.',
    'options': {
      'Continue Exploring': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
      'Return to the Path': {
        'nextScene': 'start',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'deep_forest': {
    'description': 'You venture deeper into the forest. The trees are thicker here.',
    'options': {
      'Keep Going': {
        'nextScene': 'mystic_grove',
        'closingFunctions': [],
        'parameters': []
      },
      'Return to the Clearing': {
        'nextScene': 'forest_clearing',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'dense_forest': {
    'description': 'You veer off the path and enter a dense part of the forest. It is dark and quiet.',
    'options': {
      'Push Through': {
        'nextScene': 'abandoned_cabin',
        'closingFunctions': [],
        'parameters': []
      },
      'Return to the Path': {
        'nextScene': 'start',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'mystic_grove': {
    'description': 'You find a mystical grove with glowing plants and strange creatures.',
    'options': {
      'Investigate': {
        'nextScene': 'grove_encounter',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave the Grove': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'grove_encounter': {
    'description': 'You encounter a wise old creature in the grove who offers you advice.',
    'options': {
      'Listen': {
        'nextScene': 'ancient_wisdom',
        'closingFunctions': [],
        'parameters': []
      },
      'Ignore': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'ancient_wisdom': {
    'description': 'The creature shares ancient wisdom with you, revealing secrets of the forest.',
    'options': {
      'Heed the Advice': {
        'nextScene': 'secret_path',
        'closingFunctions': [],
        'parameters': []
      },
      'Thank the Creature': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'secret_path': {
    'description': 'You follow the creature\'s advice and discover a hidden path.',
    'options': {
      'Follow the Path': {
        'nextScene': 'hidden_lake',
        'closingFunctions': [],
        'parameters': []
      },
      'Return to the Grove': {
        'nextScene': 'mystic_grove',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'abandoned_cabin': {
    'description': 'You come across an abandoned cabin in the woods. It looks eerie.',
    'options': {
      'Enter the Cabin': {
        'nextScene': 'cabin_interior',
        'closingFunctions': [],
        'parameters': []
      },
      'Avoid the Cabin': {
        'nextScene': 'dense_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'cabin_interior': {
    'description': 'Inside the cabin, you find old furniture and a dusty journal.',
    'options': {
      'Read the Journal': {
        'nextScene': 'cabin_journal',
        'closingFunctions': [],
        'parameters': []
      },
      'Search the Cabin': {
        'nextScene': 'cabin_search',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'cabin_journal': {
    'description': 'The journal tells a story of a treasure buried deep in the forest.',
    'options': {
      'Follow the Clues': {
        'nextScene': 'treasure_hunt',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave the Cabin': {
        'nextScene': 'dense_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'cabin_search': {
    'description': 'You find a hidden compartment in the cabin with some useful items.',
    'options': {
      'Take the Items': {
        'nextScene': 'dense_forest',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave the Cabin': {
        'nextScene': 'dense_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'treasure_hunt': {
    'description': 'You follow the clues from the journal, leading you deeper into the forest.',
    'options': {
      'Keep Searching': {
        'nextScene': 'hidden_cave',
        'closingFunctions': [],
        'parameters': []
      },
      'Give Up': {
        'nextScene': 'dense_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'hidden_cave': {
    'description': 'You find a hidden cave that matches the description in the journal.',
    'options': {
      'Enter the Cave': {
        'nextScene': 'cave_treasure',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave the Cave': {
        'nextScene': 'dense_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'cave_treasure': {
    'description': 'Inside the cave, you find a chest filled with treasure.',
    'options': {
      'Take the Treasure': {
        'nextScene': 'end_treasure',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave the Treasure': {
        'nextScene': 'hidden_cave',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'end_treasure': {
    'description': 'You have found the treasure and your adventure ends here. Congratulations!',
    'options': {},
    'openingFunction': [],
    'parameters': []
  },
  'hidden_lake': {
    'description': 'You find a hidden lake with crystal clear water. It is a beautiful sight.',
    'options': {
      'Swim in the Lake': {
        'nextScene': 'lake_swim',
        'closingFunctions': [],
        'parameters': []
      },
      'Camp by the Lake': {
        'nextScene': 'lake_camp',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'lake_swim': {
    'description': 'You take a refreshing swim in the lake. The water is cool and clear.',
    'options': {
      'Rest by the Lake': {
        'nextScene': 'lake_camp',
        'closingFunctions': [],
        'parameters': []
      },
      'Continue Exploring': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'lake_camp': {
    'description': 'You set up camp by the lake. It is a peaceful night.',
    'options': {
      'Sleep Here': {
        'nextScene': 'lake_morning',
        'closingFunctions': [],
        'parameters': []
      },
      'Keep Watch': {
        'nextScene': 'lake_watch',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'lake_morning': {
    'description': 'You wake up to a beautiful sunrise over the lake.',
    'options': {
      'Continue Your Journey': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
      'Stay Another Day': {
        'nextScene': 'lake_swim',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'lake_watch': {
    'description': 'You keep watch through the night. It is quiet and uneventful.',
    'options': {
      'Rest Now': {
        'nextScene': 'lake_morning',
        'closingFunctions': [],
        'parameters': []
      },
      'Continue Your Journey': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'forest_encounter': {
    'description': 'You encounter a wandering traveler in the forest. He seems friendly.',
    'options': {
      'Talk to Him': {
        'nextScene': 'traveler_story',
        'closingFunctions': [],
        'parameters': []
      },
      'Avoid Him': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'traveler_story': {
    'description': 'The traveler tells you about a hidden waterfall in the forest.',
    'options': {
      'Ask for Directions': {
        'nextScene': 'waterfall_path',
        'closingFunctions': [],
        'parameters': []
      },
      'Ignore the Story': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'waterfall_path': {
    'description': 'You follow the traveler\'s directions and find a path to the hidden waterfall.',
    'options': {
      'Follow the Path': {
        'nextScene': 'hidden_waterfall',
        'closingFunctions': [],
        'parameters': []
      },
      'Turn Back': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'hidden_waterfall': {
    'description': 'You find the hidden waterfall. It is a magnificent sight.',
    'options': {
      'Bathe in the Waterfall': {
        'nextScene': 'waterfall_bathe',
        'closingFunctions': [],
        'parameters': []
      },
      'Camp Nearby': {
        'nextScene': 'waterfall_camp',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'waterfall_bathe': {
    'description': 'You bathe in the waterfall. It is refreshing and revitalizing.',
    'options': {
      'Rest by the Waterfall': {
        'nextScene': 'waterfall_camp',
        'closingFunctions': [],
        'parameters': []
      },
      'Continue Exploring': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'waterfall_camp': {
    'description': 'You set up camp near the waterfall. The sound of water is soothing.',
    'options': {
      'Sleep Here': {
        'nextScene': 'waterfall_morning',
        'closingFunctions': [],
        'parameters': []
      },
      'Keep Watch': {
        'nextScene': 'waterfall_watch',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'waterfall_morning': {
    'description': 'You wake up to the sound of the waterfall and birds singing.',
    'options': {
      'Continue Your Journey': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
      'Stay Another Day': {
        'nextScene': 'waterfall_bathe',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'waterfall_watch': {
    'description': 'You keep watch through the night. The sound of the waterfall is calming.',
    'options': {
      'Rest Now': {
        'nextScene': 'waterfall_morning',
        'closingFunctions': [],
        'parameters': []
      },
      'Continue Your Journey': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'forest_ambush': {
    'description': 'You are ambushed by a group of bandits in the forest.',
    'options': {
      'Fight Back': {
        'nextScene': 'fight_bandits',
        'closingFunctions': [],
        'parameters': []
      },
      'Run Away': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'fight_bandits': {
    'description': 'You fight back against the bandits. It is a tough battle.',
    'options': {
      'Continue Fighting': {
        'nextScene': 'bandit_victory',
        'closingFunctions': [],
        'parameters': []
      },
      'Try to Escape': {
        'nextScene': 'bandit_escape',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'bandit_victory': {
    'description': 'You manage to defeat the bandits. You find some loot on them.',
    'options': {
      'Take the Loot': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave the Loot': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'bandit_escape': {
    'description': 'You manage to escape from the bandits, but you are injured.',
    'options': {
      'Find a Safe Place': {
        'nextScene': 'forest_shelter',
        'closingFunctions': [],
        'parameters': []
      },
      'Keep Moving': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'forest_shelter': {
    'description': 'You find a safe place to rest and tend to your wounds.',
    'options': {
      'Rest Here': {
        'nextScene': 'shelter_rest',
        'closingFunctions': [],
        'parameters': []
      },
      'Keep Moving': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'shelter_rest': {
    'description': 'You rest at the shelter. Your wounds start to heal.',
    'options': {
      'Continue Your Journey': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
      'Stay and Recover': {
        'nextScene': 'shelter_recovery',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'shelter_recovery': {
    'description': 'You spend more time at the shelter, recovering from your injuries.',
    'options': {
      'Continue Your Journey': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
      'Stay Another Day': {
        'nextScene': 'shelter_rest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'forest_fork': {
    'description': 'You come to a fork in the path. Which way will you go?',
    'options': {
      'Take the Left Path': {
        'nextScene': 'left_path',
        'closingFunctions': [],
        'parameters': []
      },
      'Take the Right Path': {
        'nextScene': 'right_path',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'left_path': {
    'description': 'You take the left path. The forest gets denser as you go.',
    'options': {
      'Keep Going': {
        'nextScene': 'abandoned_cabin',
        'closingFunctions': [],
        'parameters': []
      },
      'Turn Back': {
        'nextScene': 'forest_fork',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'right_path': {
    'description': 'You take the right path. You hear the sound of running water.',
    'options': {
      'Follow the Sound': {
        'nextScene': 'hidden_waterfall',
        'closingFunctions': [],
        'parameters': []
      },
      'Turn Back': {
        'nextScene': 'forest_fork',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'forest_glade': {
    'description': 'You find a peaceful glade in the forest. It feels magical.',
    'options': {
      'Rest Here': {
        'nextScene': 'glade_rest',
        'closingFunctions': [],
        'parameters': []
      },
      'Continue Exploring': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'glade_rest': {
    'description': 'You rest in the glade. The peacefulness is rejuvenating.',
    'options': {
      'Stay Longer': {
        'nextScene': 'glade_stay',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'glade_stay': {
    'description': 'You decide to stay in the glade for a while longer.',
    'options': {
      'Explore the Glade': {
        'nextScene': 'glade_explore',
        'closingFunctions': [],
        'parameters': []
      },
      'Rest More': {
        'nextScene': 'glade_rest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'glade_explore': {
    'description': 'You explore the glade and find hidden wonders.',
    'options': {
      'Continue Exploring': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
      'Rest in the Glade': {
        'nextScene': 'glade_rest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'enchanted_forest': {
    'description': 'You enter a part of the forest that feels enchanted.',
    'options': {
      'Investigate': {
        'nextScene': 'enchanted_tree',
        'closingFunctions': [],
        'parameters': []
      },
      'Proceed Cautiously': {
        'nextScene': 'start',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'enchanted_tree': {
    'description': 'You find an ancient tree that seems to glow with magic.',
    'options': {
      'Touch the Tree': {
        'nextScene': 'tree_touch',
        'closingFunctions': [],
        'parameters': []
      },
      'Observe from a Distance': {
        'nextScene': 'enchanted_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'tree_touch': {
    'description': 'When you touch the tree, you feel a surge of energy.',
    'options': {
      'Explore Further': {
        'nextScene': 'enchanted_exploration',
        'closingFunctions': [],
        'parameters': []
      },
      'Return to Path': {
        'nextScene': 'start',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'enchanted_exploration': {
    'description': 'You explore the enchanted forest, finding many wonders.',
    'options': {
      'Continue Exploring': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
      'Return to Tree': {
        'nextScene': 'enchanted_tree',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'forest_ruins': {
    'description': 'You discover ancient ruins hidden in the forest.',
    'options': {
      'Explore the Ruins': {
        'nextScene': 'ruins_exploration',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave the Ruins': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'ruins_exploration': {
    'description': 'You explore the ruins and find remnants of a lost civilization.',
    'options': {
      'Continue Exploring': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
      'Rest Here': {
        'nextScene': 'ruins_rest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'ruins_rest': {
    'description': 'You rest in the ruins, feeling a connection to the past.',
    'options': {
      'Continue Exploring': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
      'Stay Here': {
        'nextScene': 'ruins_stay',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'ruins_stay': {
    'description': 'You decide to stay in the ruins and uncover more secrets.',
    'options': {
      'Explore Further': {
        'nextScene': 'ruins_discovery',
        'closingFunctions': [],
        'parameters': []
      },
      'Rest More': {
        'nextScene': 'ruins_rest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'ruins_discovery': {
    'description': 'You discover hidden chambers and ancient artifacts.',
    'options': {
      'Take an Artifact': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave the Artifact': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'forest_river': {
    'description': 'You find a river running through the forest. The water is clear and cold.',
    'options': {
      'Follow the River': {
        'nextScene': 'river_path',
        'closingFunctions': [],
        'parameters': []
      },
      'Cross the River': {
        'nextScene': 'river_crossing',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'river_path': {
    'description': 'You follow the river, enjoying the sound of flowing water.',
    'options': {
      'Keep Following': {
        'nextScene': 'hidden_lake',
        'closingFunctions': [],
        'parameters': []
      },
      'Return to Forest': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'river_crossing': {
    'description': 'You cross the river, getting wet but making it to the other side.',
    'options': {
      'Dry Off': {
        'nextScene': 'river_bank',
        'closingFunctions': [],
        'parameters': []
      },
      'Keep Moving': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'river_bank': {
    'description': 'You dry off by the river bank, enjoying the peacefulness.',
    'options': {
      'Rest Here': {
        'nextScene': 'bank_rest',
        'closingFunctions': [],
        'parameters': []
      },
      'Continue Your Journey': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'bank_rest': {
    'description': 'You rest by the river bank, feeling rejuvenated.',
    'options': {
      'Stay Longer': {
        'nextScene': 'bank_stay',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'bank_stay': {
    'description': 'You decide to stay by the river bank for a while longer.',
    'options': {
      'Explore the Area': {
        'nextScene': 'bank_explore',
        'closingFunctions': [],
        'parameters': []
      },
      'Rest More': {
        'nextScene': 'bank_rest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'bank_explore': {
    'description': 'You explore the area around the river bank and find hidden treasures.',
    'options': {
      'Take a Treasure': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave the Treasure': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'forest_hill': {
    'description': 'You climb a hill in the forest and enjoy the view from the top.',
    'options': {
      'Rest Here': {
        'nextScene': 'hill_rest',
        'closingFunctions': [],
        'parameters': []
      },
      'Continue Exploring': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'hill_rest': {
    'description': 'You rest on the hill, enjoying the panoramic view of the forest.',
    'options': {
      'Stay Longer': {
        'nextScene': 'hill_stay',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'hill_stay': {
    'description': 'You decide to stay on the hill for a while longer.',
    'options': {
      'Explore the Hill': {
        'nextScene': 'hill_explore',
        'closingFunctions': [],
        'parameters': []
      },
      'Rest More': {
        'nextScene': 'hill_rest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'hill_explore': {
    'description': 'You explore the hill and find hidden wonders.',
    'options': {
      'Continue Exploring': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
      'Rest on the Hill': {
        'nextScene': 'hill_rest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'forest_meadow': {
    'description': 'You find a beautiful meadow in the forest filled with wildflowers.',
    'options': {
      'Rest Here': {
        'nextScene': 'meadow_rest',
        'closingFunctions': [],
        'parameters': []
      },
      'Continue Exploring': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'meadow_rest': {
    'description': 'You rest in the meadow, surrounded by the beauty of nature.',
    'options': {
      'Stay Longer': {
        'nextScene': 'meadow_stay',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'meadow_stay': {
    'description': 'You decide to stay in the meadow for a while longer.',
    'options': {
      'Explore the Meadow': {
        'nextScene': 'meadow_explore',
        'closingFunctions': [],
        'parameters': []
      },
      'Rest More': {
        'nextScene': 'meadow_rest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'meadow_explore': {
    'description': 'You explore the meadow and find hidden wonders.',
    'options': {
      'Continue Exploring': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
      'Rest in the Meadow': {
        'nextScene': 'meadow_rest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'forest_cave': {
    'description': 'You find a cave hidden in the forest. It looks dark and mysterious.',
    'options': {
      'Enter the Cave': {
        'nextScene': 'cave_exploration',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave the Cave': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'cave_exploration': {
    'description': 'You explore the cave and find ancient drawings on the walls.',
    'options': {
      'Continue Exploring': {
        'nextScene': 'deep_cave',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave the Cave': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'deep_cave': {
    'description': 'You venture deeper into the cave, finding more mysteries.',
    'options': {
      'Continue Exploring': {
        'nextScene': 'cave_chamber',
        'closingFunctions': [],
        'parameters': []
      },
      'Return to Forest': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'cave_chamber': {
    'description': 'You find a large chamber in the cave filled with ancient artifacts.',
    'options': {
      'Take an Artifact': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave the Artifact': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'forest_cliff': {
    'description': 'You come to a cliff in the forest with a breathtaking view.',
    'options': {
      'Rest Here': {
        'nextScene': 'cliff_rest',
        'closingFunctions': [],
        'parameters': []
      },
      'Continue Exploring': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'cliff_rest': {
    'description': 'You rest on the cliff, enjoying the view of the forest below.',
    'options': {
      'Stay Longer': {
        'nextScene': 'cliff_stay',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'cliff_stay': {
    'description': 'You decide to stay on the cliff for a while longer.',
    'options': {
      'Explore the Cliff': {
        'nextScene': 'cliff_explore',
        'closingFunctions': [],
        'parameters': []
      },
      'Rest More': {
        'nextScene': 'cliff_rest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'cliff_explore': {
    'description': 'You explore the cliff and find hidden wonders.',
    'options': {
      'Continue Exploring': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
      'Rest on the Cliff': {
        'nextScene': 'cliff_rest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'forest_glade': {
    'description': 'You find a peaceful glade in the forest. It feels magical.',
    'options': {
      'Rest Here': {
        'nextScene': 'glade_rest',
        'closingFunctions': [],
        'parameters': []
      },
      'Continue Exploring': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'glade_rest': {
    'description': 'You rest in the glade. The peacefulness is rejuvenating.',
    'options': {
      'Stay Longer': {
        'nextScene': 'glade_stay',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'glade_stay': {
    'description': 'You decide to stay in the glade for a while longer.',
    'options': {
      'Explore the Glade': {
        'nextScene': 'glade_explore',
        'closingFunctions': [],
        'parameters': []
      },
      'Rest More': {
        'nextScene': 'glade_rest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'glade_explore': {
    'description': 'You explore the glade and find hidden wonders.',
    'options': {
      'Continue Exploring': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
      'Rest in the Glade': {
        'nextScene': 'glade_rest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'forest_cabin': {
    'description': 'You find a small cabin in the forest. It looks cozy.',
    'options': {
      'Knock on the Door': {
        'nextScene': 'cabin_knock',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave the Cabin': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'cabin_knock': {
    'description': 'You knock on the door and an old man opens it, inviting you in.',
    'options': {
      'Enter the Cabin': {
        'nextScene': 'cabin_interior',
        'closingFunctions': [],
        'parameters': []
      },
      'Politely Decline': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'forest_fall': {
    'description': 'You slip and fall into a hidden pit in the forest.',
    'options': {
      'Climb Out': {
        'nextScene': 'pit_climb',
        'closingFunctions': [],
        'parameters': []
      },
      'Look Around': {
        'nextScene': 'pit_look',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'pit_climb': {
    'description': 'You manage to climb out of the pit and continue your journey.',
    'options': {
      'Rest Here': {
        'nextScene': 'pit_rest',
        'closingFunctions': [],
        'parameters': []
      },
      'Continue Exploring': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'pit_look': {
    'description': 'You look around the pit and find hidden treasures.',
    'options': {
      'Take a Treasure': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave the Treasure': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'pit_rest': {
    'description': 'You rest near the pit, feeling safe for the moment.',
    'options': {
      'Continue Your Journey': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
      'Stay Here': {
        'nextScene': 'pit_stay',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'pit_stay': {
    'description': 'You decide to stay near the pit for a while longer.',
    'options': {
      'Explore the Area': {
        'nextScene': 'pit_explore',
        'closingFunctions': [],
        'parameters': []
      },
      'Rest More': {
        'nextScene': 'pit_rest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'pit_explore': {
    'description': 'You explore the area around the pit and find hidden treasures.',
    'options': {
      'Take a Treasure': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave the Treasure': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'forest_thicket': {
    'description': 'You push through a dense thicket and find a hidden path.',
    'options': {
      'Follow the Path': {
        'nextScene': 'hidden_path',
        'closingFunctions': [],
        'parameters': []
      },
      'Return to Forest': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'hidden_path': {
    'description': 'You follow the hidden path and find a clearing with a small pond.',
    'options': {
      'Rest by the Pond': {
        'nextScene': 'pond_rest',
        'closingFunctions': [],
        'parameters': []
      },
      'Continue Exploring': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'pond_rest': {
    'description': 'You rest by the pond, enjoying the peacefulness.',
    'options': {
      'Stay Longer': {
        'nextScene': 'pond_stay',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'pond_stay': {
    'description': 'You decide to stay by the pond for a while longer.',
    'options': {
      'Explore the Area': {
        'nextScene': 'pond_explore',
        'closingFunctions': [],
        'parameters': []
      },
      'Rest More': {
        'nextScene': 'pond_rest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'pond_explore': {
    'description': 'You explore the area around the pond and find hidden wonders.',
    'options': {
      'Continue Exploring': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
      'Rest by the Pond': {
        'nextScene': 'pond_rest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'forest_cliffside': {
    'description': 'You find a cliffside overlooking the forest.',
    'options': {
      'Rest Here': {
        'nextScene': 'cliffside_rest',
        'closingFunctions': [],
        'parameters': []
      },
      'Continue Exploring': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'cliffside_rest': {
    'description': 'You rest on the cliffside, enjoying the view.',
    'options': {
      'Stay Longer': {
        'nextScene': 'cliffside_stay',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'cliffside_stay': {
    'description': 'You decide to stay on the cliffside for a while longer.',
    'options': {
      'Explore the Cliffside': {
        'nextScene': 'cliffside_explore',
        'closingFunctions': [],
        'parameters': []
      },
      'Rest More': {
        'nextScene': 'cliffside_rest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'cliffside_explore': {
    'description': 'You explore the cliffside and find hidden wonders.',
    'options': {
      'Continue Exploring': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
      'Rest on the Cliffside': {
        'nextScene': 'cliffside_rest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'forest_clearing_2': {
    'description': 'You find another clearing in the forest. It is calm and peaceful.',
    'options': {
      'Rest Here': {
        'nextScene': 'clearing_rest_2',
        'closingFunctions': [],
        'parameters': []
      },
      'Continue Exploring': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'clearing_rest_2': {
    'description': 'You rest in the clearing. The tranquility rejuvenates you.',
    'options': {
      'Stay Longer': {
        'nextScene': 'clearing_stay_2',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'clearing_stay_2': {
    'description': 'You decide to stay in the clearing for a while longer.',
    'options': {
      'Explore the Clearing': {
        'nextScene': 'clearing_explore_2',
        'closingFunctions': [],
        'parameters': []
      },
      'Rest More': {
        'nextScene': 'clearing_rest_2',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'clearing_explore_2': {
    'description': 'You explore the clearing and find hidden wonders.',
    'options': {
      'Continue Exploring': {
        'nextScene': 'deep_forest',
        'closingFunctions': [],
        'parameters': []
      },
      'Rest in the Clearing': {
        'nextScene': 'clearing_rest_2',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'forest_entrance_2': {
    'description': 'You find another entrance to the forest. The trees loom tall and dark.',
    'options': {
      'Enter the Forest': {
        'nextScene': 'start_2',
        'closingFunctions': [],
        'parameters': []
      },
      'Stay Outside': {
        'nextScene': 'village_market',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'start_2': {
    'description': 'You step into the forest. The canopy above blocks most of the sunlight.',
    'options': {
      'Follow the Path': {
        'nextScene': 'forest_clearing_2',
        'closingFunctions': [],
        'parameters': []
      },
      'Venture Off the Path': {
        'nextScene': 'dense_forest_2',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'dense_forest_2': {
    'description': 'You veer off the path and enter a dense part of the forest. It is dark and quiet.',
    'options': {
      'Push Through': {
        'nextScene': 'abandoned_cabin_2',
        'closingFunctions': [],
        'parameters': []
      },
      'Return to the Path': {
        'nextScene': 'start_2',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'abandoned_cabin_2': {
    'description': 'You come across an abandoned cabin in the woods. It looks eerie.',
    'options': {
      'Enter the Cabin': {
        'nextScene': 'cabin_interior_2',
        'closingFunctions': [],
        'parameters': []
      },
      'Avoid the Cabin': {
        'nextScene': 'dense_forest_2',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'cabin_interior_2': {
    'description': 'Inside the cabin, you find old furniture and a dusty journal.',
    'options': {
      'Read the Journal': {
        'nextScene': 'cabin_journal_2',
        'closingFunctions': [],
        'parameters': []
      },
      'Search the Cabin': {
        'nextScene': 'cabin_search_2',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'cabin_journal_2': {
    'description': 'The journal tells a story of a treasure buried deep in the forest.',
    'options': {
      'Follow the Clues': {
        'nextScene': 'treasure_hunt_2',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave the Cabin': {
        'nextScene': 'dense_forest_2',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'cabin_search_2': {
    'description': 'You find a hidden compartment in the cabin with some useful items.',
    'options': {
      'Take the Items': {
        'nextScene': 'dense_forest_2',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave the Cabin': {
        'nextScene': 'dense_forest_2',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'treasure_hunt_2': {
    'description': 'You follow the clues from the journal, leading you deeper into the forest.',
    'options': {
      'Keep Searching': {
        'nextScene': 'hidden_cave_2',
        'closingFunctions': [],
        'parameters': []
      },
      'Give Up': {
        'nextScene': 'dense_forest_2',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'hidden_cave_2': {
    'description': 'You find a hidden cave that matches the description in the journal.',
    'options': {
      'Enter the Cave': {
        'nextScene': 'cave_treasure_2',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave the Cave': {
        'nextScene': 'dense_forest_2',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'cave_treasure_2': {
    'description': 'Inside the cave, you find a chest filled with treasure.',
    'options': {
      'Take the Treasure': {
        'nextScene': 'end_treasure_2',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave the Treasure': {
        'nextScene': 'hidden_cave_2',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'end_treasure_2': {
    'description': 'You have found the treasure and your adventure ends here. Congratulations!',
    'options': {},
    'openingFunction': [],
    'parameters': []
  },
  'forest_clearing_3': {
    'description': 'You find another clearing in the forest. It is calm and peaceful.',
    'options': {
      'Rest Here': {
        'nextScene': 'clearing_rest_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Continue Exploring': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'clearing_rest_3': {
    'description': 'You rest in the clearing. The tranquility rejuvenates you.',
    'options': {
      'Stay Longer': {
        'nextScene': 'clearing_stay_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'clearing_stay_3': {
    'description': 'You decide to stay in the clearing for a while longer.',
    'options': {
      'Explore the Clearing': {
        'nextScene': 'clearing_explore_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Rest More': {
        'nextScene': 'clearing_rest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'clearing_explore_3': {
    'description': 'You explore the clearing and find hidden wonders.',
    'options': {
      'Continue Exploring': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Rest in the Clearing': {
        'nextScene': 'clearing_rest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'deep_forest_3': {
    'description': 'You venture deeper into the forest. The trees are thicker here.',
    'options': {
      'Keep Going': {
        'nextScene': 'mystic_grove_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Return to the Clearing': {
        'nextScene': 'forest_clearing_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'mystic_grove_3': {
    'description': 'You find a mystical grove with glowing plants and strange creatures.',
    'options': {
      'Investigate': {
        'nextScene': 'grove_encounter_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave the Grove': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'grove_encounter_3': {
    'description': 'You encounter a wise old creature in the grove who offers you advice.',
    'options': {
      'Listen': {
        'nextScene': 'ancient_wisdom_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Ignore': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'ancient_wisdom_3': {
    'description': 'The creature shares ancient wisdom with you, revealing secrets of the forest.',
    'options': {
      'Heed the Advice': {
        'nextScene': 'secret_path_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Thank the Creature': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'secret_path_3': {
    'description': 'You follow the creature\'s advice and discover a hidden path.',
    'options': {
      'Follow the Path': {
        'nextScene': 'hidden_lake_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Return to the Grove': {
        'nextScene': 'mystic_grove_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'hidden_lake_3': {
    'description': 'You find a hidden lake with crystal clear water. It is a beautiful sight.',
    'options': {
      'Swim in the Lake': {
        'nextScene': 'lake_swim_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Camp by the Lake': {
        'nextScene': 'lake_camp_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'lake_swim_3': {
    'description': 'You take a refreshing swim in the lake. The water is cool and clear.',
    'options': {
      'Rest by the Lake': {
        'nextScene': 'lake_camp_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Continue Exploring': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'lake_camp_3': {
    'description': 'You set up camp by the lake. It is a peaceful night.',
    'options': {
      'Sleep Here': {
        'nextScene': 'lake_morning_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Keep Watch': {
        'nextScene': 'lake_watch_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'lake_morning_3': {
    'description': 'You wake up to a beautiful sunrise over the lake.',
    'options': {
      'Continue Your Journey': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Stay Another Day': {
        'nextScene': 'lake_swim_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'lake_watch_3': {
    'description': 'You keep watch through the night. It is quiet and uneventful.',
    'options': {
      'Rest Now': {
        'nextScene': 'lake_morning_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Continue Your Journey': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'forest_encounter_3': {
    'description': 'You encounter a wandering traveler in the forest. He seems friendly.',
    'options': {
      'Talk to Him': {
        'nextScene': 'traveler_story_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Avoid Him': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'traveler_story_3': {
    'description': 'The traveler tells you about a hidden waterfall in the forest.',
    'options': {
      'Ask for Directions': {
        'nextScene': 'waterfall_path_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Ignore the Story': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'waterfall_path_3': {
    'description': 'You follow the traveler\'s directions and find a path to the hidden waterfall.',
    'options': {
      'Follow the Path': {
        'nextScene': 'hidden_waterfall_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Turn Back': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'hidden_waterfall_3': {
    'description': 'You find the hidden waterfall. It is a magnificent sight.',
    'options': {
      'Bathe in the Waterfall': {
        'nextScene': 'waterfall_bathe_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Camp Nearby': {
        'nextScene': 'waterfall_camp_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'waterfall_bathe_3': {
    'description': 'You bathe in the waterfall. It is refreshing and revitalizing.',
    'options': {
      'Rest by the Waterfall': {
        'nextScene': 'waterfall_camp_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Continue Exploring': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'waterfall_camp_3': {
    'description': 'You set up camp near the waterfall. The sound of water is soothing.',
    'options': {
      'Sleep Here': {
        'nextScene': 'waterfall_morning_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Keep Watch': {
        'nextScene': 'waterfall_watch_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'waterfall_morning_3': {
    'description': 'You wake up to the sound of the waterfall and birds singing.',
    'options': {
      'Continue Your Journey': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Stay Another Day': {
        'nextScene': 'waterfall_bathe_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'waterfall_watch_3': {
    'description': 'You keep watch through the night. The sound of the waterfall is calming.',
    'options': {
      'Rest Now': {
        'nextScene': 'waterfall_morning_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Continue Your Journey': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'forest_ambush_3': {
    'description': 'You are ambushed by a group of bandits in the forest.',
    'options': {
      'Fight Back': {
        'nextScene': 'fight_bandits_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Run Away': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'fight_bandits_3': {
    'description': 'You fight back against the bandits. It is a tough battle.',
    'options': {
      'Continue Fighting': {
        'nextScene': 'bandit_victory_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Try to Escape': {
        'nextScene': 'bandit_escape_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'bandit_victory_3': {
    'description': 'You manage to defeat the bandits. You find some loot on them.',
    'options': {
      'Take the Loot': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave the Loot': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'bandit_escape_3': {
    'description': 'You manage to escape from the bandits, but you are injured.',
    'options': {
      'Find a Safe Place': {
        'nextScene': 'forest_shelter_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Keep Moving': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'forest_shelter_3': {
    'description': 'You find a safe place to rest and tend to your wounds.',
    'options': {
      'Rest Here': {
        'nextScene': 'shelter_rest_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Keep Moving': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'shelter_rest_3': {
    'description': 'You rest at the shelter. Your wounds start to heal.',
    'options': {
      'Continue Your Journey': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Stay and Recover': {
        'nextScene': 'shelter_recovery_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'shelter_recovery_3': {
    'description': 'You spend more time at the shelter, recovering from your injuries.',
    'options': {
      'Continue Your Journey': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Stay Another Day': {
        'nextScene': 'shelter_rest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'forest_fork_3': {
    'description': 'You come to a fork in the path. Which way will you go?',
    'options': {
      'Take the Left Path': {
        'nextScene': 'left_path_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Take the Right Path': {
        'nextScene': 'right_path_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'left_path_3': {
    'description': 'You take the left path. The forest gets denser as you go.',
    'options': {
      'Keep Going': {
        'nextScene': 'abandoned_cabin_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Turn Back': {
        'nextScene': 'forest_fork_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'right_path_3': {
    'description': 'You take the right path. You hear the sound of running water.',
    'options': {
      'Follow the Sound': {
        'nextScene': 'hidden_waterfall_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Turn Back': {
        'nextScene': 'forest_fork_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'forest_glade_3': {
    'description': 'You find a peaceful glade in the forest. It feels magical.',
    'options': {
      'Rest Here': {
        'nextScene': 'glade_rest_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Continue Exploring': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'glade_rest_3': {
    'description': 'You rest in the glade. The peacefulness is rejuvenating.',
    'options': {
      'Stay Longer': {
        'nextScene': 'glade_stay_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'glade_stay_3': {
    'description': 'You decide to stay in the glade for a while longer.',
    'options': {
      'Explore the Glade': {
        'nextScene': 'glade_explore_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Rest More': {
        'nextScene': 'glade_rest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'glade_explore_3': {
    'description': 'You explore the glade and find hidden wonders.',
    'options': {
      'Continue Exploring': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Rest in the Glade': {
        'nextScene': 'glade_rest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'enchanted_forest_3': {
    'description': 'You enter a part of the forest that feels enchanted.',
    'options': {
      'Investigate': {
        'nextScene': 'enchanted_tree_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Proceed Cautiously': {
        'nextScene': 'start_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'enchanted_tree_3': {
    'description': 'You find an ancient tree that seems to glow with magic.',
    'options': {
      'Touch the Tree': {
        'nextScene': 'tree_touch_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Observe from a Distance': {
        'nextScene': 'enchanted_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'tree_touch_3': {
    'description': 'When you touch the tree, you feel a surge of energy.',
    'options': {
      'Explore Further': {
        'nextScene': 'enchanted_exploration_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Return to Path': {
        'nextScene': 'start_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'enchanted_exploration_3': {
    'description': 'You explore the enchanted forest, finding many wonders.',
    'options': {
      'Continue Exploring': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Return to Tree': {
        'nextScene': 'enchanted_tree_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'forest_ruins_3': {
    'description': 'You discover ancient ruins hidden in the forest.',
    'options': {
      'Explore the Ruins': {
        'nextScene': 'ruins_exploration_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave the Ruins': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'ruins_exploration_3': {
    'description': 'You explore the ruins and find remnants of a lost civilization.',
    'options': {
      'Continue Exploring': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Rest Here': {
        'nextScene': 'ruins_rest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'ruins_rest_3': {
    'description': 'You rest in the ruins, feeling a connection to the past.',
    'options': {
      'Continue Exploring': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Stay Here': {
        'nextScene': 'ruins_stay_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'ruins_stay_3': {
    'description': 'You decide to stay in the ruins and uncover more secrets.',
    'options': {
      'Explore Further': {
        'nextScene': 'ruins_discovery_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Rest More': {
        'nextScene': 'ruins_rest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'ruins_discovery_3': {
    'description': 'You discover hidden chambers and ancient artifacts.',
    'options': {
      'Take an Artifact': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave the Artifact': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'forest_river_3': {
    'description': 'You find a river running through the forest. The water is clear and cold.',
    'options': {
      'Follow the River': {
        'nextScene': 'river_path_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Cross the River': {
        'nextScene': 'river_crossing_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'river_path_3': {
    'description': 'You follow the river, enjoying the sound of flowing water.',
    'options': {
      'Keep Following': {
        'nextScene': 'hidden_lake_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Return to Forest': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'river_crossing_3': {
    'description': 'You cross the river, getting wet but making it to the other side.',
    'options': {
      'Dry Off': {
        'nextScene': 'river_bank_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Keep Moving': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'river_bank_3': {
    'description': 'You dry off by the river bank, enjoying the peacefulness.',
    'options': {
      'Rest Here': {
        'nextScene': 'bank_rest_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Continue Your Journey': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'bank_rest_3': {
    'description': 'You rest by the river bank, feeling rejuvenated.',
    'options': {
      'Stay Longer': {
        'nextScene': 'bank_stay_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'bank_stay_3': {
    'description': 'You decide to stay by the river bank for a while longer.',
    'options': {
      'Explore the Area': {
        'nextScene': 'bank_explore_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Rest More': {
        'nextScene': 'bank_rest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'bank_explore_3': {
    'description': 'You explore the area around the river bank and find hidden treasures.',
    'options': {
      'Take a Treasure': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave the Treasure': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'forest_hill_3': {
    'description': 'You climb a hill in the forest and enjoy the view from the top.',
    'options': {
      'Rest Here': {
        'nextScene': 'hill_rest_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Continue Exploring': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'hill_rest_3': {
    'description': 'You rest on the hill, enjoying the panoramic view of the forest.',
    'options': {
      'Stay Longer': {
        'nextScene': 'hill_stay_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'hill_stay_3': {
    'description': 'You decide to stay on the hill for a while longer.',
    'options': {
      'Explore the Hill': {
        'nextScene': 'hill_explore_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Rest More': {
        'nextScene': 'hill_rest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'hill_explore_3': {
    'description': 'You explore the hill and find hidden wonders.',
    'options': {
      'Continue Exploring': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Rest on the Hill': {
        'nextScene': 'hill_rest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'forest_meadow_3': {
    'description': 'You find a beautiful meadow in the forest filled with wildflowers.',
    'options': {
      'Rest Here': {
        'nextScene': 'meadow_rest_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Continue Exploring': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'meadow_rest_3': {
    'description': 'You rest in the meadow, surrounded by the beauty of nature.',
    'options': {
      'Stay Longer': {
        'nextScene': 'meadow_stay_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'meadow_stay_3': {
    'description': 'You decide to stay in the meadow for a while longer.',
    'options': {
      'Explore the Meadow': {
        'nextScene': 'meadow_explore_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Rest More': {
        'nextScene': 'meadow_rest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'meadow_explore_3': {
    'description': 'You explore the meadow and find hidden wonders.',
    'options': {
      'Continue Exploring': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Rest in the Meadow': {
        'nextScene': 'meadow_rest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'forest_cave_3': {
    'description': 'You find a cave hidden in the forest. It looks dark and mysterious.',
    'options': {
      'Enter the Cave': {
        'nextScene': 'cave_exploration_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave the Cave': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'cave_exploration_3': {
    'description': 'You explore the cave and find ancient drawings on the walls.',
    'options': {
      'Continue Exploring': {
        'nextScene': 'deep_cave_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave the Cave': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'deep_cave_3': {
    'description': 'You venture deeper into the cave, finding more mysteries.',
    'options': {
      'Continue Exploring': {
        'nextScene': 'cave_chamber_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Return to Forest': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'cave_chamber_3': {
    'description': 'You find a large chamber in the cave filled with ancient artifacts.',
    'options': {
      'Take an Artifact': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave the Artifact': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'forest_cliff_3': {
    'description': 'You come to a cliff in the forest with a breathtaking view.',
    'options': {
      'Rest Here': {
        'nextScene': 'cliff_rest_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Continue Exploring': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'cliff_rest_3': {
    'description': 'You rest on the cliff, enjoying the view of the forest below.',
    'options': {
      'Stay Longer': {
        'nextScene': 'cliff_stay_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Leave': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'cliff_stay_3': {
    'description': 'You decide to stay on the cliff for a while longer.',
    'options': {
      'Explore the Cliff': {
        'nextScene': 'cliff_explore_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Rest More': {
        'nextScene': 'cliff_rest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
  'cliff_explore_3': {
    'description': 'You explore the cliff and find hidden wonders.',
    'options': {
      'Continue Exploring': {
        'nextScene': 'deep_forest_3',
        'closingFunctions': [],
        'parameters': []
      },
      'Rest on the Cliff': {
        'nextScene': 'cliff_rest_3',
        'closingFunctions': [],
        'parameters': []
      },
    },
    'openingFunction': [],
    'parameters': []
  },
};
