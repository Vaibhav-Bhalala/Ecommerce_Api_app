import 'package:dummy_json_app/Views/screens/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.purpleAccent),
    routes: {
      '/': (context) => HomePage(),
    },
  ));
}
