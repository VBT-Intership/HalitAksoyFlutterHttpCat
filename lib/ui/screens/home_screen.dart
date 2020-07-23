import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_http_cat/ui/components/http_cat_list.dart';
import 'package:url_launcher/url_launcher.dart';

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
      actions: <Widget>[
        FlatButton(onPressed: () {
          _launchURL();
        }, child: Text("Goto http.cat"))
      ],
      title: Text(
        "Http Cats",
        style: TextStyle(color: Colors.red),
      ),
    );
  }

  _launchURL() async {
    const url = 'https://http.cat/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      //throw 'Could not launch $url';
    }
  }
}
