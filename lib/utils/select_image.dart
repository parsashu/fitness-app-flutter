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
ImageProvider<Object> _getImage(String title) {
  var random = Random();
  String path = 'assets/images/workout/chest_workout.png';
  final List<String> chestKeys = ['سینه'];
  final List<String> backKeys = ['سینه'];
  final List<String> shoulderKeys = ['سینه'];
  final List<String> bicepKeys = ['سینه'];
  final List<String> tricepKeys = ['سینه'];
  final List<String> legKeys = ['سینه'];
  final List<String> absKeys = ['سینه'];
  final List<String> fullKeys = ['سینه'];
  final List<String> cardioKeys = ['سینه'];
  final List<String> chestPaths = [
    'assets/images/workout/chest_workout.png',
  ];
  final List<String> backPaths = [
    'assets/images/workout/back_workout.png',
  ];
  final List<String> shoulderPaths = [
    'assets/images/workout/Shoulder.png',
  ];
  final List<String> bicepPaths = [
    'assets/images/workout/bicep_workout.png',
  ];
  final List<String> tricepPaths = [
    'assets/images/workout/tricep_workout.png',
  ];
  final List<String> legPaths = [
    'assets/images/workout/leg_workout.png',
  ];
  final List<String> absPaths = [
    'assets/images/workout/abs_workout.png',
  ];
  final List<String> fullPaths = [
    'assets/images/workout/full_workout.png',
  ];
  final List<String> cardioPaths = [
    'assets/images/workout/cardio_workout.png',
  ];

  // Chest
  for (var key in chestKeys) {
    if (title.contains(key)) {
      int index = random.nextInt(chestPaths.length);
      path = chestPaths[index];
    }
  }
  // Back
  for (var key in backKeys) {
    if (title.contains(key)) {
      int index = random.nextInt(backPaths.length);
      path = backPaths[index];
    }
  }
  // Shoulder
  for (var key in shoulderKeys) {
    if (title.contains(key)) {
      int index = random.nextInt (shoulderPaths.length);
      path = shoulderPaths[index];
    }
  }
  // Bicep
  for (var key in bicepKeys) {
    if (title.contains(key)) {
      int index = random.nextInt(bicepPaths.length);
      path = bicepPaths[index];
    }
  }
  // Tricep
  for (var key in tricepKeys) {
    if (title.contains(key)) {
      int index = random.nextInt(tricepPaths.length);
      path = tricepPaths[index];
    }
  }
  // Leg
  for (var key in legKeys) {
    if (title.contains(key)) {
      int index = random.nextInt(legPaths.length);
      path = legPaths[index];
    }
  }
  // Abs
  for (var key in absKeys) {
    if (title.contains(key)) {
      int index = random.nextInt(absPaths.length);
      path = absPaths[index];
    }
  }
  // Full body
  for (var key in fullKeys) {
    if (title.contains(key)) {
      int index = random.nextInt(fullPaths.length);
      path = fullPaths[index];
    }
  }
  // Cardio
  for (var key in cardioKeys) {
    if (title.contains(key)) {
      int index = random.nextInt(cardioPaths.length);
      path = cardioPaths[index];
    }
  }
  return AssetImage(path);
}
