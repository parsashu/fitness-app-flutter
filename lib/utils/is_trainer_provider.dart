import 'package:flutter/foundation.dart';

class IsTrainerProvider with ChangeNotifier {
  bool _isTrainer = false;

  bool get isTrainer => _isTrainer;

  void setTrainer(bool value) {
    _isTrainer = value;
    notifyListeners();
  }
}
