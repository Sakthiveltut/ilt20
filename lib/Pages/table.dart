import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _DataTableExample createState() => _DataTableExample();
}

class _DataTableExample extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Table'),
      ),
      body: Container(
        child: DataTable(
          columns: [
            DataColumn(
              label:
                  Text('TEAM', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            DataColumn(
              label:
                  Text('PLAYED', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            DataColumn(
              label:
                  Text('POINTS', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            DataColumn(
              label: Text('NRR', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('GG')),
              DataCell(Text('10')),
              DataCell(Text('16')),
              DataCell(Text('1.000')),
            ]),
            DataRow(cells: [
              DataCell(Text('DV')),
              DataCell(Text('10')),
              DataCell(Text('14')),
              DataCell(Text('-1.000')),
            ]),
            DataRow(cells: [
              DataCell(Text('MIE')),
              DataCell(Text('10')),
              DataCell(Text('11')),
              DataCell(Text('-1.000')),
            ]),
            DataRow(cells: [
              DataCell(Text('DC')),
              DataCell(Text('10')),
              DataCell(Text('12')),
              DataCell(Text('0.979')),
            ]),
          ],
        ),
      ),
    ));
  }
}
