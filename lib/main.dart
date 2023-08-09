import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart';
import 'users_models.dart';

Future<void> main() async {
  Uri uri = Uri.parse('https://dummyjson.com/users/10');

  Response response = await get(uri);

  UserModel userModel = UserModel.fromMap(jsonDecode(response.body));

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Get user app",
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: false,
        title: Text('${userModel.firstName}  ${userModel.lastName}  ${userModel.maidenName}'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Image(
          image: NetworkImage("${userModel.image}"),
        ),
      ),
    ),
  ));
}
