import 'package:flutter/material.dart';
import 'package:flutter_http_cat/data/model/http_cat.dart';

class HttpCatCard extends StatelessWidget {
  final HttpCat httpCat;

  const HttpCatCard(this.httpCat, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(10);
    return Card(
      shape: RoundedRectangleBorder(borderRadius: borderRadius),
      child: ClipRRect(
        borderRadius: borderRadius,
        child: Image.network(httpCat.imageUrl),
      ),
    );
  }
}
