import 'package:flutter/material.dart';

class Const {
  // GENERAL
  static final Color BACKGROUND_COLOR = Color(0xff121421);
  static final Color TRANSPARENT_COLOR = Colors.transparent;

  static final MaterialStateProperty<Color?>? BUTTON_COLOR =
      MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
    if (states.contains(MaterialState.pressed)) {
      return BACKGROUND_COLOR.withOpacity(0.5);
    }
    return null;
  });

  // BOTTOM BAR
  static final Color BOTTOM_BAR_COLOR = Color(0xff1C2031);
  static final Color? SELECTED_ITEM_COLOR = Colors.amber[800];
  static final Color ICON_COLOR = Color(0xff4A80F0);
  static final double ICON_SIZE = 40.0;
}
