import 'dart:math';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// Method to pick image from gallery
pickImage(ImageSource source) async {
  final ImagePicker imagePicker = ImagePicker();
  XFile? file = await imagePicker.pickImage(source: source);
  if (file != null) {
    return await file.readAsBytes();
  }
  return null;
}

// Method to get image by title
ImageProvider<Object> getImage(String title) {
  var random = Random();
  String path = 'assets/images/workout/chest_workout.png';

  // Key words
  final List keys = [
    ["سینه"],
    ["زیربغل"],
    ["سرشانه"],
    ["جلو بازو"],
    ["پشت بازو"],
    ["پا"],
    ["شکم"],
    ["فول بادی"],
    ["هوازی"],
  ];

  // Image paths
  final List paths = [
    // Chest
    [
      'assets/images/workout/chest_workout.png',
      'assets/images/workout/chest_workout2.png',
    ],
    // Back
    [
      'assets/images/workout/back_workout.png',
    ],
    // Shoulder
    [
      'assets/images/workout/Shoulder.png',
    ],
    // Bicep
    [
      'assets/images/workout/bicep_workout.png',
    ],
    // Tricep
    [
      'assets/images/workout/tricep_workout.png',
    ],
    // Leg
    [
      'assets/images/workout/leg_workout.png',
    ],
    // Abs
    [
      'assets/images/workout/abs_workout.png',
      'assets/images/workout/abs_workout2.png',
    ],
    // Full body
    [
      'assets/images/workout/full_workout.png',
    ],
    // Cardio
    [
      'assets/images/workout/cardio_workout.png',
    ],
  ];

  // Check what key word is in title
  for (int i = 0; i < keys.length; i++) {
    List trainingKeys = keys[i];
    for (String key in trainingKeys) {
      if (title.contains(key)) {
        // Return a random path accourding to key word
        List trainingPaths = paths[i];
        int index = random.nextInt(trainingPaths.length);
        path = trainingPaths[index];
        return AssetImage(path);
      }
    }
  }
  // Key words havn't found in title return a random path
  int i = random.nextInt(paths.length);
  int j = random.nextInt(paths[i].length);
  path = paths[i][j];
  return AssetImage(path);
}

