import 'package:http/http.dart' as http;
import 'dart:convert';


Future loginUser(String email, String password) async {
  String url = "http://192.168.1.175/larticles/public/api/submit";
  final response = await http.post(url, 
  headers: {"Accept": "Application/json"},
  body: {'email' : email, 'password': password});

  var convertedDatatoJson = jsonDecode(response.body);

  return convertedDatatoJson;

}