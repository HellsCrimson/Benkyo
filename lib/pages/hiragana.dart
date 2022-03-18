import 'package:benkyo/category/hiragana.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../widgets/const.dart';

class HiraganaPage extends StatefulWidget {
  const HiraganaPage({
    Key? key,
  }) : super(key: key);

  @override
  State<HiraganaPage> createState() => _HiraganaPageState();
}

class _HiraganaPageState extends State<HiraganaPage> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  var _words = Hiragana();
  var text = TextEditingController();

  @override
  void initState() {
    super.initState();
    _getSavedSuccess();
    _getSavedFailure();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Const.BACKGROUND_COLOR,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                _words.getSymbol(),
                style: TextStyle(color: Const.ICON_COLOR, fontSize: 100),
              ),
              Column(children: [
                Text(
                  _words.getSuccessCount().toString() + ' success(es)',
                  style: TextStyle(color: Const.ICON_COLOR, fontSize: 20),
                ),
                Text(
                  _words.getFailureCount().toString() + ' failure(s)',
                  style: TextStyle(color: Const.ICON_COLOR, fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextField(
                    controller: text,
                    autocorrect: false,
                    enableSuggestions: false,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Const.ICON_COLOR, fontSize: 20),
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff4A80F0)),
                      ),
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(15),
                      isDense: true,
                      labelText: 'Answer',
                      labelStyle: TextStyle(color: Color(0xff4A80F0)),
                    ),
                    onSubmitted: (String value) async {
                      await displayDialog(context, value);
                      setState(() {
                        text.clear();
                      });
                    },
                  ),
                ),
                getButtons(),
              ])
            ],
          ),
        ),
      ),
    );
  }

  Future<void> displayDialog(BuildContext context, String value) async {
    await showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        if (_checkAnswer(value)) {
          return AlertDialog(
            title: const Text('おめでとう!'),
            content: const Text('You guessed correctly'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  _words.newWord();
                  _incrementSuccess();
                  Navigator.pop(context);
                },
                child: const Text('OK'),
              ),
            ],
          );
        } else {
          return AlertDialog(
            title: const Text('Almost!'),
            content: Text(
                'You typed "$value" but it was "' + _words.getLetter() + '".'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  _words.newWord();
                  _incrementFailure();
                  Navigator.pop(context);
                },
                child: const Text('OK'),
              ),
            ],
          );
        }
      },
    );
  }

  getButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
          style: ButtonStyle(
            backgroundColor: Const.BUTTON_COLOR,
          ),
          onPressed: () {
            setState(() {
              _words.newWord();
              text.clear();
            });
          },
          child: const Text("Reset"),
        ),
        TextButton(
          style: ButtonStyle(
            backgroundColor: Const.BUTTON_COLOR,
          ),
          onPressed: () {
            setState(() {
              _words.newWord();
              clearText();
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

  clearText() {
    text.clear();
  }
}
