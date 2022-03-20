import 'dart:io';
import 'package:benkyo/database/entities/hiraganaHistory.dart';
import 'package:benkyo/database/entities/kanjiHistory.dart';
import 'package:benkyo/database/entities/katakanaHistory.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

part 'database.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'history.sqlite'));
    return NativeDatabase(file);
  });
}

@DriftDatabase(tables: [HiraganaHistory, KatakanaHistory, KanjiHistory])
class Database extends _$Database {
  Database() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  // Hiragana
  Future<List<HiraganaHistoryData>> getHiraganaHistory() async {
    return await select(hiraganaHistory).get();
  }

  Future<HiraganaHistoryData> getHiraganaHistoryById(int id) async {
    return await (select(hiraganaHistory)
          ..where((table) => table.id.equals(id)))
        .getSingle();
  }

  Future<bool> updateHiraganaHistory(HiraganaHistoryCompanion data) async {
    return await update(hiraganaHistory).replace(data);
  }

  Future<int> insertHiraganaHistory(HiraganaHistoryCompanion data) async {
    return await into(hiraganaHistory).insert(data);
  }

  Future<int> deleteHiraganaHistory(int id) async {
    return await (delete(hiraganaHistory)
          ..where((table) => table.id.equals(id)))
        .go();
  }

  Future<int> deleteAllHiraganaHistory() async {
    return await (delete(hiraganaHistory)).go();
  }

  // Katakana
  Future<List<KatakanaHistoryData>> getKatakanaHistory() async {
    return await select(katakanaHistory).get();
  }

  Future<KatakanaHistoryData> getKatakanaHistoryById(int id) async {
    return await (select(katakanaHistory)
          ..where((table) => table.id.equals(id)))
        .getSingle();
  }

  Future<bool> updateKatakanaHistory(KatakanaHistoryCompanion data) async {
    return await update(katakanaHistory).replace(data);
  }

  Future<int> insertKatakanaHistory(KatakanaHistoryCompanion data) async {
    return await into(katakanaHistory).insert(data);
  }

  Future<int> deleteKatakanaHistory(int id) async {
    return await (delete(katakanaHistory)
          ..where((table) => table.id.equals(id)))
        .go();
  }

  Future<int> deleteAllKatakanaHistory() async {
    return await (delete(katakanaHistory)).go();
  }

  // Kanji
  Future<List<KanjiHistoryData>> getKanjiHistory() async {
    return await select(kanjiHistory).get();
  }

  Future<KanjiHistoryData> getKanjiHistoryById(int id) async {
    return await (select(kanjiHistory)..where((table) => table.id.equals(id)))
        .getSingle();
  }

  Future<bool> updateKanjiHistory(KanjiHistoryCompanion data) async {
    return await update(kanjiHistory).replace(data);
  }

  Future<int> insertKanjiHistory(KanjiHistoryCompanion data) async {
    return await into(kanjiHistory).insert(data);
  }

  Future<int> deleteKanjiHistory(int id) async {
    return await (delete(kanjiHistory)..where((table) => table.id.equals(id)))
        .go();
  }

  Future<int> deleteAllKanjiHistory() async {
    return await (delete(kanjiHistory)).go();
  }

  // Delete all history
  void deleteAllHistory() async {
    deleteAllHiraganaHistory();
    deleteAllKatakanaHistory();
    deleteAllKanjiHistory();
  }
}
