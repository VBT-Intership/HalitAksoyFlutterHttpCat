import 'package:flutter_http_cat/data/constant/errors.dart';
import 'package:flutter_http_cat/data/model/http_cat.dart';
import 'package:flutter_http_cat/manager/error_manager.dart';
import 'package:flutter_http_cat/manager/network_manager.dart';

class HttpCatProvider{
  final String _httpCatUrl = "https://hwasampleapi.firebaseio.com/http.json";

  List<HttpCat> _httpCats;

  Future<List<HttpCat>> load({bool forceUpdate = false}) async {
    ErrorManager().reset();
    if (_httpCats == null || forceUpdate) {
      var response = await NetworkManager().sendGetRequest(_httpCatUrl);
      if (response is List) {
        return _httpCats = response.map((e) => HttpCat.fromJson(e)).toList();
      } else {
        ErrorManager().throwError(serverError);
      }
    }
    return _httpCats;
  }

  static final HttpCatProvider _provider = HttpCatProvider._internal();

  factory HttpCatProvider() {
    return _provider;
  }

  HttpCatProvider._internal();
}
