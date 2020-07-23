import 'package:flutter/material.dart';
import 'package:flutter_http_cat/ui/screens/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Http Cat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    ),
  );
}
