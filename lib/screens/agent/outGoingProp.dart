// import 'package:flutter/material.dart';
// import 'package:mdproject/screens/agent/services.dart';
// import 'employee.dart';

// class OutgoingProperties extends StatefulWidget {
//   OutgoingProperties() : super();
//   OutgoingPropertiesPageState createState() =>
//       new OutgoingPropertiesPageState();
// }

// class OutgoingPropertiesPageState extends State<OutgoingProperties> {
//   List<Employee> _employees;
//   GlobalKey<ScaffoldState> _scaffoldKey;

//   TextEditingController _firstNameController;
//   TextEditingController _lastNameController;
//   Employee _selectedEmployee;
//   bool _isUpdating;
//   String _titleProgress;

//   @override
//   void initState() {
//     super.initState();
//     _employees = [];
//     _isUpdating = false;
//     _scaffoldKey = GlobalKey();
//     _firstNameController = TextEditingController();
//     _lastNameController = TextEditingController();
//   }

//   // _showSnackBar(context, message){
//   //   _scaffoldKey.currentState.showSnackBar(
//   //     SnackBar(
//   //       content: Text(message), )
//   // }
//   _createTable() {
//     Services.createTable().then((result){
//       if('success' == result){
//       //  _showSnackBar(context, result);
//       }
//     });
//   }

//   _addTable() {
//      if (_firstNameController.text.isEmpty || _lastNameController.text.isEmpty) {
//       print('Empty Fields');
//       return;
//     }
//     Services.addEmployee(_firstNameController.text, _lastNameController.text)
//         .then((result) {
//       if ('success' == result) {
//         _getEmployees(); // Refresh the List after adding each employee...
//         _clearValues();
//       }
//     });
//   }
//   _getEmployees() {
//      Services.getEmployees().then((employees) {
//       setState(() {
//         _employees = employees;
//       });
//       print("Length ${employees.length}");
//     });
//   }
//   // _updateEmployee() {
//   //   setState(() {
//   //     _isUpdating = true;
//   //   });
//   //   Services.updateEmployee(
//   //           employee.id, _firstNameController.text, _lastNameController.text)
//   //       .then((result) {
//   //     if ('success' == result) {
//   //       _getEmployees(); // Refresh the list after update
//   //       setState(() {
//   //         _isUpdating = false;
//   //       });
//   //       _clearValues();
//   //     }
//   //   });
//   // }

//   // _deleteEmployee() {
//   //   //
//   // }

//   _clearValues() {
//     _firstNameController.text = '';
//     _lastNameController.text = '';
//   }
  
//   // Datatable

//   SingleChildScrollView _dataBody (){
//     // Both vertical and horizontal scrollview for the datatable to
//     // scroll both vertically and horizontally
//     return SingleChildScrollView (
//       scrollDirection:  Axis.vertical,
//       child: SingleChildScrollView (
//         scrollDirection: Axis.horizontal,
//         child: DataTable(
//           columns: [
//             DataColumn(label: Text ('ID'),)
//           ],
//           rows: _employees.map((employee)=> DataRow(
//             cells: [
//               //DataCell(Text(employee.id))
//             ] )) 
//         ),
//         )

//     );
//   }
  
//   // UI
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       appBar: new AppBar(
//         title: new Text('Outgoing Properties'),
//         backgroundColor: Colors.deepOrange,
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(Icons.add),
//             onPressed: () {
//               _createTable();
//             },
//           ),
//           IconButton(
//             icon: Icon(Icons.refresh),
//             onPressed: () {
//               _getEmployees();
//             },
//           ),
//         ],
//       ),
//       body: Container(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Padding(
//               padding: EdgeInsets.all(20.0),
//               child: TextField(
//                 controller: _firstNameController,
//                 decoration: InputDecoration.collapsed(
//                   hintText: 'First Name',
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(20.0),
//               child: TextField(
//                 controller: _firstNameController,
//                 decoration: InputDecoration.collapsed(
//                   hintText: 'Last Name',
//                 ),
//               ),
//             ), 
//             _isUpdating ? Row (
//               children: <Widget>[
//                 OutlineButton(
//                   child: Text('UPDATE'),
//                   onPressed: (){
//                     //_updateEmployee();
//                   },
//                 ),
//                 OutlineButton(
//                   child: Text('CANCEL'),
//                   onPressed: (){
//                     setState(() {
//                      _isUpdating = false;
//                     });
//                      _clearValues() ;
//                   },
//                 ),                
//               ],
//               ) 
//               : Container(),          
//           ],
//         ),
//       ),
//     );
//   }
// }
