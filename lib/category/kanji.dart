import 'category.dart';

class Kanji extends Category {
  Kanji() : super(2, 'Kanji', kanji, true);

  static final kanji = [
    ['日', 'hi', 'nichi', 'Jour'],
    ['月', 'tsuki', 'getsu', 'Lune'],
    ['火', 'hi', 'ka', 'Feu'],
    ['水', 'mizu', 'sui', 'Eau'],
    ['木', 'ki', 'boku', 'Arbre'],
    ['金', 'kane', 'kin', 'Argent'],
    ['土', 'do', 'do', 'Terre'],
    ['人', 'hito', 'jin', 'Humain'],
    ['入', 'naru', 'nyuu', 'Entrer'],
    ['出', 'shu', 'shutsu', 'Sortir'],
    ['上', 'shou', 'jou', 'Haut'],
    ['下', 'shita', 'ka', 'Bas'],
    ['左', 'shita', 'sa', 'Gauche'],
    ['右', 'migi', 'u', 'Droite'],
    ['北', 'kita', 'hoku', 'Nord'],
    ['南', 'minami', 'nan', 'Sud'],
    ['東', 'higashi', 'tou', 'Est'],
    ['西', 'nishi', 'sei', 'Ouest'],
    ['明', 'akari', 'mei', 'Lumière'],
    ['暗', 'kurai', 'an', 'Obscurité'],
    ['昼', 'hiru', 'chuu', 'Journée'],
    ['夜', 'yoru', 'ya', 'Nuit'],
    ['白', 'shiro', 'haku', 'Blanc'],
    ['黒', 'kuro', 'koku', 'Noir'],
    ['百', 'momo', 'hyaku', 'Cent'],
    ['千', 'chi', 'sen', 'Mille'],
  ];

  @override
  getLetter() {
    if (kunPronunciation) {
      return list[index][1];
    } else {
      return list[index][2];
    }
  }
}
