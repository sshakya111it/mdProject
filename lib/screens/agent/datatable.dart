import 'package:flutter/material.dart';

//import 'package:flutter/rendering.dart';

class DataTables extends StatefulWidget {
  List list;
  int index;

  DataTables({this.list, this.index});
  @override
  _DataTablesState createState() => _DataTablesState();
}

class _DataTablesState extends State<DataTables> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${widget.list[widget.index]['Agent Name']}'),
          backgroundColor: Colors.deepOrange,
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columns: [
                    DataColumn(
                        label: Text(
                      'FIRST NAME',
                    )),
                    DataColumn(
                        label: Text(
                      'LAST NAME',
                    )),
                  ],
                  rows: (widget.list[widget.index])
                      .map((index) => DataRow(cells: [
                            DataCell(
                                Text(widget.list[widget.index]['Agent Name'])),
                            DataCell(
                                Text(widget.list[widget.index]['Address'])),
                          ]))
                      .toList(),
                ))));
    //   SingleChildScrollView (
    //     scrollDirection: Axis.vertical,
    //     child: SingleChildScrollView(
    //       scrollDirection: Axis.horizontal,
    //       child: DataTable (
    //         columns:[
    //         DataColumn(label: Text ('ID',)),
    //         DataColumn(label: Text ('FIRST NAME',)),
    //         DataColumn(label: Text ('LAST NAME',)),
    //         ],
    //         rows: [DataCell(
    //                Text(widget.list[widget.index]['Agent Name'],
    //                     style: TextStyle(fontSize:18.0),
    //                  ),
    //       ),]
    //       )
    //     )

    // ));
  }

  // SingleChildScrollView _dataBody() {
  //   return SingleChildScrollView(
  //         scrollDirection: Axis.vertical,
  //         child: SingleChildScrollView(
  //         scrollDirection: Axis.horizontal,
  //         child: DataTable (
  //           columns:<DataColumn>[
  //           DataColumn(label: Text ('ID',)),
  //           //DataColumn(label: Text ('FIRST NAME',)),
  //           //DataColumn(label: Text ('LAST NAME',)),
  //           ],
  //           rows: [DataCell(
  //                  Text(widget.list[widget.index]['Agent Name'],
  //                       style: TextStyle(fontSize:18.0),
  //                    ),
  //         ),]
  //         )
  //       )

  //   );
  // }
}
