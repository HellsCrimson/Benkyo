import 'package:benkyo/widgets/const.dart';
import 'package:flutter/material.dart';

class HistoricPage extends StatefulWidget {
  const HistoricPage({
    Key? key,
    required this.history,
  }) : super(key: key);

  final List<dynamic> history;

  @override
  _HistoricPageState createState() => _HistoricPageState();
}

class _HistoricPageState extends State<HistoricPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Const.BACKGROUND_COLOR,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Historic',
        ),
        backgroundColor: Const.BOTTOM_BAR_COLOR,
        foregroundColor: Const.TEXT_COLOR,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: DataTable(
            columnSpacing: 25,
            columns: [
              DataColumn(
                label: Text(
                  'Was Correct',
                  style: TextStyle(
                    color: Const.TEXT_COLOR,
                  ),
                ),
              ),
              DataColumn(
                  label: Text(
                'Symbol',
                style: TextStyle(
                  color: Const.TEXT_COLOR,
                ),
              )),
              DataColumn(
                  label: Text(
                'Romaji',
                style: TextStyle(
                  color: Const.TEXT_COLOR,
                ),
              )),
              DataColumn(
                  label: Text(
                'User Input',
                style: TextStyle(
                  color: Const.TEXT_COLOR,
                ),
              )),
            ],
            rows: getRows(),
          ),
        ),
      ),
    );
  }

  getRows() {
    List<DataRow> rows = [];
    for (int y = 0; y < widget.history.length; y++) {
      rows.add(
        DataRow(
          cells: [
            DataCell(
              Center(
                child: Checkbox(
                  onChanged: (bool? value) {},
                  value: true,
                  activeColor:
                      widget.history[y].romaji == widget.history[y].userInput
                          ? Colors.green
                          : Colors.red,
                  splashRadius: 0,
                  checkColor: Const.TRANSPARENT_COLOR,
                ),
              ),
            ),
            DataCell(
              Center(
                child: Text(
                  widget.history[y].symbol,
                  style: TextStyle(
                    color: Const.TEXT_COLOR,
                  ),
                ),
              ),
            ),
            DataCell(
              Center(
                child: Text(
                  widget.history[y].romaji,
                  style: TextStyle(
                    color: Const.TEXT_COLOR,
                  ),
                ),
              ),
            ),
            DataCell(
              Center(
                child: Text(
                  widget.history[y].userInput,
                  style: TextStyle(
                    color: Const.TEXT_COLOR,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
    return rows;
  }
}
