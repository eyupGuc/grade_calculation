import 'package:dinamik_not_hesaplama/constants/app_constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Sabitler.anaRenk),
      debugShowCheckedModeBanner: false,
      title: "Dinamik not Hesaplama",
      home: Scaffold(
        body: Center(
          child: Text("data"),
        ),
      ),
    );
  }
}
