import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_http_cat/ui/components/http_cat_list.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: HttpCatList(),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        "Http Cats",
        style: TextStyle(color: Colors.red),
      ),
    );
  }
}
