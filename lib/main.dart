import 'package:flutter/material.dart';
import './allNews.dart';
import './categories.dart';
import './specificNews.dart';
import './profile.dart';
import "./people.dart";

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
      '/': (context) => AllNews(),
      '/categories': (context) => Categories(),
      '/specificNews': (context) => SpecificNews(),
      '/people': (context) => People(),
      '/profile': (context) => Profile(),
    },
  ));
}
