import 'dart:convert';
import 'package:flutter_http_cat/data/constant/errors.dart';
import 'package:flutter_http_cat/manager/error_manager.dart';
import 'package:http/http.dart' as http;

class NetworkManager {
  Future<void> sendPostRequest(String url, String data) async {}

  Future<dynamic> sendGetRequest(String url) async {
    var response = await http.get(url);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      //todo use switch case for status codes
      ErrorManager().throwError(serverError);
    }
  }

  static final NetworkManager _networkManager = NetworkManager._internal();

  factory NetworkManager() {
    return _networkManager;
  }

  NetworkManager._internal();
}
