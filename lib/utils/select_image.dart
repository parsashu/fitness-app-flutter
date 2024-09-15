import 'dart:math';
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
String getImagePath(String title) {
  var random = Random();
  String path = 'assets/images/workout/chest_workout.png';

// Key words
  final List keys = [
    // Chest (سینه)
    ["سینه", "بالا سینه", "زیر سینه", "chest", "pec", "pectorals"],

    // Back (زیربغل)
    [
      "زیربغل",
      "لت",
      "کمر",
      "back",
      "lats",
      "latissimus",
      "upper back",
      "پشت کمر",
      "بالا کمر"
    ],

    // Shoulder (سرشانه)
    [
      "سرشانه",
      "شانه",
      "دلتوئید",
      "سرشانه جلو",
      "سرشانه جانبی",
      "سرشانه پشت",
      "shoulder",
      "deltoid",
      "delts",
      "جانب",
    ],
    // Tricep (پشت بازو)
    ["پشت بازو", "تریسپ", "دست", "tricep", "triceps", "arm"],

    // Bicep (جلو بازو)
    ["جلو بازو", "بایسپ", "دست", "bicep", "biceps", "arm", "بازو", "ساعد"],

    // Leg (پا)
    [
      "پا",
      "جلو پا",
      "پشت پا",
      "ساق",
      "جلوران",
      "پشت ران",
      "کوادریسیپس",
      "همسترینگ",
      "glutes",
      "leg",
      "quads",
      "quadriceps",
      "hamstring",
      "calves",
      "glutes",
      "ران",
      "ساق پا"
    ],

    // Abs (شکم)
    [
      "شکم",
      "پهلو",
      "عضلات شکم",
      "سیکس پک",
      "abs",
      "abdominals",
      "core",
      "سیکس",
      "پک",
      "کر",
      "فیله",
    ],

    // Full Body (فول بادی)
    [
      "فول بادی",
      "تمام بدن",
      "بدن",
      "full body",
      "total body",
      "compound",
      "تمام"
    ],

    // Cardio (هوازی)
    [
      "هوازی",
      "تمرینات هوازی",
      "دویدن",
      "دو",
      "پیاده روی",
      "دوچرخه",
      "cardio",
      "aerobic",
      "conditioning",
      "پیاده",
      "روی",
      "دوچرخه"
    ],
  ];

  // Image paths
  final List paths = [
    // Chest
    [
      'assets/images/workout/chest_workout.png',
      'assets/images/workout/chest_workout2.png',
      'assets/images/workout/chest_workout3.png',
      'assets/images/workout/chest_workout4.png',
      'assets/images/workout/chest_workout5.png',
      'assets/images/workout/chest_workout6.png',
    ],
    // Back
    [
      'assets/images/workout/back_workout.png',
      'assets/images/workout/back_workout2.png',
      'assets/images/workout/back_workout3.png',
      'assets/images/workout/back_workout6.png',
      'assets/images/workout/back_workout7.png',
      'assets/images/workout/back_workout8.png',
      'assets/images/workout/back_workout9.png',
      'assets/images/workout/back_workout10.png',
      'assets/images/workout/back_workout11.png',
      'assets/images/workout/back_workout12.png',
    ],
    // Shoulder
    [
      'assets/images/workout/shoulder_workout.png',
      'assets/images/workout/shoulder_workout2.png',
      'assets/images/workout/shoulder_workout3.png',
      'assets/images/workout/shoulder_workout4.png',
      'assets/images/workout/shoulder_workout5.png',
      'assets/images/workout/shoulder_workout6.png',
      'assets/images/workout/shoulder_workout7.png',
    ],
    // Tricep
    [
      'assets/images/workout/tricep_workout.png',
      'assets/images/workout/tricep_workout2.png',
      'assets/images/workout/tricep_workout3.png',
      'assets/images/workout/tricep_workout4.png',
    ],
    // Bicep
    [
      'assets/images/workout/bicep_workout.png',
      'assets/images/workout/bicep_workout2.png',
      'assets/images/workout/bicep_workout3.png',
      'assets/images/workout/bicep_workout4.png',
      'assets/images/workout/bicep_workout5.png',
    ],

    // Leg
    [
      'assets/images/workout/leg_workout.png',
      'assets/images/workout/leg_workout3.png',
      'assets/images/workout/leg_workout4.png',
      'assets/images/workout/leg_workout5.png',
      'assets/images/workout/leg_workout6.png',
      'assets/images/workout/leg_workout7.png',
      'assets/images/workout/leg_workout8.png',
    ],
    // Abs
    [
      'assets/images/workout/abs_workout.png',
      'assets/images/workout/abs_workout2.png',
      'assets/images/workout/abs_workout3.png',
      'assets/images/workout/abs_workout4.png',
      'assets/images/workout/abs_workout5.png',
    ],
    // Full body
    [
      'assets/images/workout/full_workout.png',
      'assets/images/workout/full_workout2.png',
      'assets/images/workout/full_workout3.png',
      'assets/images/workout/full_workout4.png',
    ],
    // Cardio
    [
      'assets/images/workout/cardio_workout.png',
      'assets/images/workout/cardio_workout2.png',
      'assets/images/workout/cardio_workout4.png',
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
        return path;
      }
    }
  }
  // Key words havn't found in title return a random path
  int i = random.nextInt(paths.length);
  int j = random.nextInt(paths[i].length);
  path = paths[i][j];
  return path;
}
