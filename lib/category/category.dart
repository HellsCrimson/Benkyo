import 'dart:math';

import 'package:shared_preferences/shared_preferences.dart';

abstract class Category {
  int id;
  String title;
  List<List<String>> list;
  bool hasMeaning;
  int index = 0;
  int successCount = 0;
  int failureCount = 0;

  bool kunPronunciation = true;
  bool showDakuon = true;
  bool showHandakuten = true;

  final int _nbHandakuten = 5;
  final int _nbDakuon = 25;

  Random rng = Random();

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Category(this.id, this.title, this.list, this.hasMeaning);

  getLetter() {
    return list[index][1];
  }

  getSymbol() {
    return list[index][0];
  }

  getTitle() {
    return title;
  }

  getId() {
    return id;
  }

  getLength() {
    return list.length;
  }

  getSuccessCount() {
    return successCount;
  }

  getFailureCount() {
    return failureCount;
  }

  setSuccessCount(int count) {
    successCount = count;
  }

  setFailureCount(int count) {
    failureCount = count;
  }

  setHasMeaning(bool hasMeaning) {
    this.hasMeaning = hasMeaning;
  }

  getHasMeaning() {
    return hasMeaning;
  }

  getMeaning() {
    return list[index][3];
  }

  getKatPronunciation() {
    return list[index][2];
  }

  resetStats() {
    setSuccessCount(0);
    setFailureCount(0);
  }

  newWord() {
    int oldIndex = index;
    if (!hasMeaning) {
      if (showDakuon && showHandakuten) {
        do {
          index = rng.nextInt(list.length);
        } while (index == oldIndex);
      } else if (showDakuon) {
        do {
          index = rng.nextInt(list.length - _nbHandakuten);
        } while (index == oldIndex);
      } else if (showHandakuten) {
        do {
          index = rng.nextInt(list.length);
        } while (index >= list.length - _nbHandakuten - _nbDakuon &&
            index < list.length - _nbHandakuten &&
            oldIndex == index);
      } else {
        do {
          index = rng.nextInt(list.length - _nbHandakuten - _nbDakuon);
        } while (index == oldIndex);
      }
    } else {
      do {
        index = rng.nextInt(list.length);
      } while (index == oldIndex);
    }
  }

  bool checkAnswer(String answer) {
    if (getLetter() == answer.trim().toLowerCase()) {
      return true;
    } else {
      return false;
    }
  }
}
