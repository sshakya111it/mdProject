import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert'; 
import 'package:flutter/rendering.dart';
import 'package:mdproject/screens/agent/details.dart';


class OutGoing extends StatefulWidget{
  @override 
  _OutGoing createState() => _OutGoing();
}

class _OutGoing extends State<OutGoing> {
  Future<List> getData() async{
    final response = await http.get("http://192.168.1.175/larticles/public/api/all");
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text('Outgoing Properties'),backgroundColor: Colors.deepOrange,),
      body: FutureBuilder<List>(
        future: getData(),
        builder: (ctx, ss){
        if(ss.hasError)
        {
          print("error");
        }
        if(ss.hasData){
          return Items(list:ss.data);
        }
        else{
          return CircularProgressIndicator();
        }
      },)
    );
  }
}

class Items extends StatelessWidget{
  List list;
  Items({this.list});
  @override 
  Widget build(BuildContext context){
    return ListView.builder(
      itemCount: list==null?0:list.length,
      itemBuilder: (ctx,i){
        return ListTile(
          leading: Icon(Icons.message),
          title: Text(list[i] ['agent_name']),
          subtitle: Text (list[i] ['email']),
          trailing: Icon(Icons.arrow_right),
          onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context)=>Details(list:list, index:i),)),

        );
      }
    );
  }

}
