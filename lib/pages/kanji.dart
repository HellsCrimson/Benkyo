import 'package:benkyo/widgets/const.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../category/kanji.dart';

class KanjiPage extends StatefulWidget {
  const KanjiPage({Key? key}) : super(key: key);

  State<KanjiPage> createState() => _KanjiPageState();
}

class _KanjiPageState extends State<KanjiPage> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  var _words = Kanji();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Const.BACKGROUND_COLOR,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _words.getSymbol(),
                style: TextStyle(color: Const.ICON_COLOR, fontSize: 100),
              ),
              TextField(),
              getButtons(),
            ],
          ),
        ),
      ),
    );
  }

  getButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return Theme.of(context).colorScheme.primary.withOpacity(0.5);
              }
              return null;
            }),
          ),
          onPressed: _words.resetStats(),
          child: const Text("Reset"),
        ),
        TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return Theme.of(context).colorScheme.primary.withOpacity(0.5);
              }
              return null;
            }),
          ),
          onPressed: () {
            setState(() {
              _words.newWord();
              //clearText();
            });
          },
          child: const Text("Pass"),
        ),
      ],
    );
  }

  bool _checkAnswer(String answer) {
    return _words.checkAnswer(answer);
  }

  void _incrementSuccess() {
    setState(() {
      _words.setSuccessCount(_words.getSuccessCount() + 1);
    });
    _incrementSaved(
        _words.getTitle().toString() + '_success', _words.getSuccessCount());
  }

  void _incrementFailure() {
    setState(() {
      _words.setFailureCount(_words.getFailureCount() + 1);
    });
    _incrementSaved(
        _words.getTitle().toString() + '_failure', _words.getFailureCount());
  }

  _incrementSaved(String key, int value) async {
    final SharedPreferences prefs = await _prefs;
    setState(() {
      prefs.setInt(key, value);
    });
  }

  _getSavedSuccess() async {
    final SharedPreferences prefs = await _prefs;
    setState(() {
      _words.setSuccessCount(
          prefs.getInt(_words.getTitle().toString() + '_success') ?? 0);
    });
  }

  _getSavedFailure() async {
    final SharedPreferences prefs = await _prefs;
    setState(() {
      _words.setFailureCount(
          prefs.getInt(_words.getTitle().toString() + '_failure') ?? 0);
    });
  }
}
