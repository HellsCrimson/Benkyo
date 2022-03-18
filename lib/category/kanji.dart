import 'category.dart';

class Kanji extends Category {
  Kanji() : super(2, 'Kanji', kanji, true);

  static final kanji = [
    ['日', 'hi', '', 'Jour'],
    ['月', 'tsuki', '', 'Lune'],
    ['火', 'hi', '', 'Feu'],
    ['水', 'mizu', '', 'Eau'],
    ['木', 'ki', '', 'Arbre'],
    ['金', 'kane', '', 'Argent'],
    ['土', 'do', '', 'Terre'],
    ['人', 'hito', '', 'Humain'],
    ['入', 'naru', '', 'Entrer'],
    ['出', 'shu', '', 'Sortir'],
    ['上', 'shou', '', 'Haut'],
    ['下', 'shita', '', 'Bas'],
    ['左', 'shita', '', 'Gauche'],
    ['右', 'migi', '', 'Droite'],
    ['北', 'kita', '', 'Nord'],
    ['南', 'minami', '', 'Sud'],
    ['東', 'tou', '', 'Est'],
    ['西', 'nishi', '', 'Ouest'],
    ['明', 'akari', '', 'Lumière'],
    ['暗', 'kuro', '', 'Obscurité'],
    ['昼', 'hiru', '', 'Journée'],
    ['夜', 'yoru', '', 'Nuit'],
    ['白', 'shiro', '', 'Blanc'],
    ['黒', 'kuro', '', 'Noir'],
    ['百', 'hyaku', '', 'Cent'],
    ['千', 'sen', '', 'Mille'],
  ];
}
