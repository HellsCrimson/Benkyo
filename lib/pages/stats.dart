import 'package:benkyo/widgets/const.dart';
import 'package:flutter/material.dart';

class StatsPage extends StatefulWidget {
  const StatsPage({
    Key? key,
    required this.symbolList,
    required this.history,
  }) : super(key: key);

  final List<List<String>> symbolList;
  final List<dynamic> history;

  @override
  _StatsPageState createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Const.BACKGROUND_COLOR,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Stats"),
        backgroundColor: Const.BOTTOM_BAR_COLOR,
        foregroundColor: Const.TEXT_COLOR,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: displayStats(),
        ),
      ),
    );
  }

  displayStats() {
    return DataTable(
      columns: [
        DataColumn(
          label: Text(
            "Symbol",
            style: TextStyle(
              color: Const.TEXT_COLOR,
            ),
          ),
        ),
        DataColumn(
          label: Text(
            "Success Rate",
            style: TextStyle(
              color: Const.TEXT_COLOR,
            ),
          ),
        ),
      ],
      rows: getRows(),
    );
  }

  getRows() {
    List<DataRow> rows = [];
    for (int x = 0; x < widget.symbolList.length; x++) {
      double successRate = getSuccessRate(widget.symbolList[x][0]);
      rows.add(
        DataRow(
          cells: [
            DataCell(
              Text(
                widget.symbolList[x][0],
                style: TextStyle(
                  color: Const.TEXT_COLOR,
                ),
              ),
            ),
            DataCell(
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    (successRate * 100).round().toString() + "%",
                    style: TextStyle(
                      color: Const.TEXT_COLOR,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 125,
                    height: 20,
                    child: LinearProgressIndicator(
                      minHeight: 14,
                      value: successRate,
                      backgroundColor: Const.BOTTOM_BAR_COLOR,
                      color: Const.PRIMARY_COLOR,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
    return rows;
  }

  double getSuccessRate(String letter) {
    double success = 0;
    double total = 0;
    for (int x = 0; x < widget.history.length; x++) {
      if (widget.history[x].symbol == letter) {
        if (widget.history[x].userInput == widget.history[x].romaji) {
          success++;
        }
        total++;
      }
    }
    if (total == 0) {
      return 0;
    }
    return success / total;
  }
}
