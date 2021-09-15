import 'package:airemoveapp/ui/dashboard/dashboard.dart';
import 'package:airemoveapp/ui/pricingplan/pricingplan.dart';
import 'package:flutter/material.dart';

//import 'package:airemoveapp/ui/homepage/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: HomePageUI(),
    );
  }
}