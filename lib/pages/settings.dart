import 'package:benkyo/database/database.dart';
import 'package:benkyo/widgets/const.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  Database _db = Database();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Const.BACKGROUND_COLOR,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(
              flex: 9,
            ),
            TextButton(
              onPressed: () => _db.deleteAllHistory(),
              child: Text(
                'Delete all history',
                style: TextStyle(
                  color: Const.TEXT_COLOR,
                  fontSize: 20,
                ),
              ),
            ),
            Spacer(
              flex: 10,
            ),
            Text(
              'Made by HellsCrimson',
              style: TextStyle(
                color: Const.TEXT_COLOR,
                fontSize: 20,
              ),
            ),
            Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
