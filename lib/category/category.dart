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

  bool japanesePronunciation = true;
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
    if (!hasMeaning) {
      if (showDakuon && showHandakuten) {
        index = rng.nextInt(list.length);
      } else if (showDakuon) {
        index = rng.nextInt(list.length - _nbHandakuten);
      } else if (showHandakuten) {
        do {
          index = rng.nextInt(list.length);
        } while (index >= list.length - _nbHandakuten - _nbDakuon &&
            index < list.length - _nbHandakuten);
      } else {
        index = rng.nextInt(list.length - _nbHandakuten - _nbDakuon);
      }
    } else {
      index = rng.nextInt(list.length);
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
