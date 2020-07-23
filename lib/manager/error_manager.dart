import 'package:flutter_http_cat/data/model/error.dart';

class ErrorManager {
  MyError currentError;

  List<MyError> errorHistory = [];

  //throwError(String errorMessage) => _throwError(MyError(errorMessage));

  throwError(MyError error) {
    currentError = error;
    errorHistory.add(currentError);
  }

  reset() {
    currentError = null;
  }

  static final ErrorManager _errorManager = ErrorManager._internal();

  factory ErrorManager() {
    return _errorManager;
  }

  ErrorManager._internal();
}
