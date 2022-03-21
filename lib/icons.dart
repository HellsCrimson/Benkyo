class KanaSvgAssets {
  static final KanaSvgAssets _instance = KanaSvgAssets._internal();

  factory KanaSvgAssets() {
    return _instance;
  }

  KanaSvgAssets._internal();

  Map<AssetName, String> assets = {
    AssetName.hiragana: "assets/icons/hiragana.svg",
    AssetName.katakana: "assets/icons/katakana.svg",
    AssetName.kanji: "assets/icons/kanji.svg",
    AssetName.settings: "assets/icons/settings.svg",
  };
}

enum AssetName { hiragana, katakana, kanji, settings }
