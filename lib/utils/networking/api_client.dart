import 'dart:io';

import 'package:http/http.dart' as http;

import 'app_exception.dart';

class ApiClient {
  Future<dynamic> get() async {
    dynamic responseJson;
    try {
      final response = await http.get(
        Uri.parse("https://moni-staging-1.vercel.app/api/loans"),
      );
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = response.body.toString();
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
