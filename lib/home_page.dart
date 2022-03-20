import 'package:benkyo/widgets/const.dart';
import 'package:flutter/material.dart';
import 'package:benkyo/pages/katakana.dart';
import 'package:benkyo/pages/hiragana.dart';
import 'package:benkyo/icons.dart';
import 'package:benkyo/pages/kanji.dart';
import 'package:benkyo/widgets/svg_asset.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HiraganaPage(),
    KatakanaPage(),
    KanjiPage(),
  ];

  @override
  void initState() {
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          highlightColor: Const.TRANSPARENT_COLOR,
          splashColor: Const.TRANSPARENT_COLOR,
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          enableFeedback: true,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgAsset(
                  assetName: AssetName.hiragana,
                  height: Const.ICON_SIZE,
                  width: Const.ICON_SIZE),
              label: '',
              tooltip: 'Hiragana',
              activeIcon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        color: Const.ICON_COLOR.withOpacity(0.3),
                        offset: Offset(0, 4),
                        blurRadius: 20),
                  ],
                ),
                child: SvgAsset(
                    assetName: AssetName.hiragana,
                    height: Const.ICON_SIZE,
                    width: Const.ICON_SIZE,
                    color: Const.ICON_COLOR),
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgAsset(
                  assetName: AssetName.katakana,
                  height: Const.ICON_SIZE,
                  width: Const.ICON_SIZE),
              label: '',
              tooltip: 'Katakana',
              activeIcon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        color: Const.ICON_COLOR.withOpacity(0.3),
                        offset: Offset(0, 4),
                        blurRadius: 20),
                  ],
                ),
                child: SvgAsset(
                  assetName: AssetName.katakana,
                  height: Const.ICON_SIZE,
                  width: Const.ICON_SIZE,
                  color: Const.ICON_COLOR,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgAsset(
                  assetName: AssetName.kanji,
                  height: Const.ICON_SIZE,
                  width: Const.ICON_SIZE),
              label: '',
              tooltip: 'Kanji',
              activeIcon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        color: Const.ICON_COLOR.withOpacity(0.3),
                        offset: Offset(0, 4),
                        blurRadius: 20),
                  ],
                ),
                child: SvgAsset(
                  assetName: AssetName.kanji,
                  height: Const.ICON_SIZE,
                  width: Const.ICON_SIZE,
                  color: Const.ICON_COLOR,
                ),
              ),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Const.SELECTED_ITEM_COLOR,
          onTap: _onItemTapped,
          backgroundColor: Const.BOTTOM_BAR_COLOR,
        ),
      ),
    );
  }
}
