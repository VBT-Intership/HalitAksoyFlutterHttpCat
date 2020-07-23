import 'package:flutter/material.dart';
import 'package:flutter_http_cat/data/model/http_cat.dart';
import 'package:flutter_http_cat/data/provider/http_cat_provider.dart';
import 'package:flutter_http_cat/ui/components/http_cat_card.dart';

class HttpCatList extends StatefulWidget {
  const HttpCatList({Key key}) : super(key: key);

  @override
  _HttpCatListState createState() => _HttpCatListState();
}

class _HttpCatListState extends State<HttpCatList> {

  List<HttpCat> httpCats = [];

  
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: HttpCatProvider().load(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          httpCats = snapshot.data;
          return ListView.builder(
            itemCount: httpCats.length,
            itemBuilder: (context, index) {
            return HttpCatCard(httpCats[index]);
          });
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
