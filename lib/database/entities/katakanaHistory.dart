import 'package:drift/drift.dart';

class KatakanaHistory extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get symbol => text()();
  TextColumn get romaji => text()();
  TextColumn get userInput => text()();
}
