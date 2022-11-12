import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:igniters/constants/url_conatants.dart';
import 'package:igniters/utils/services/app_exceptions.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RestAPIService {
  final String baseURL = APIUrl.baseUrl;
  Future<dynamic> get(String url) async {
    dynamic responseJson;
    var prefs = await SharedPreferences.getInstance();
    var token = prefs.getString("acessToken");
    try {
      final response = await http.post(Uri.parse(baseURL + url), headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $token"
      });
      responseJson = await _returnResponse(response);
    } on SocketException {
      throw FetchDataException("No Internet Connection");
    }
    return responseJson;
  }

  Future<http.Response> post(String url, body) async {
    dynamic responseJson;
    try {
      print(body);
      final response = await http.post(Uri.parse(baseURL + url),
          headers: {"Content-Type": "application/json"},
          body: json.encode(
            body,
          ));
      print(body);
      print(response.body.toString());
      return response;
    } on SocketException {
      throw FetchDataException("No Internet Exception");
    }
    return responseJson;
  }

  Future<http.Response> register(String url, body) async {
    dynamic responseJson;
    try {
      final response = await http.post(Uri.parse(baseURL + url),
          headers: {
            "Content-Type": "application/json",
            // "Authorization": "Bearer $token"
            "Authorization":
                "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNDI1NDhiYzA2ODEyMzY2MTY4ZTIwMjM5IiwiZnVsbF9uYW1lIjoiU2FnYXIga2hhZGthIiwiaWF0IjoxNjY4MTczMjI4LCJleHAiOjE2Njg1MTg4Mjh9.M5zkpe1IbbL_sMklfG3MZBvb-YtJxVpCZ1BkbysR4U8"
          },
          body: json.encode(body));
      print(response.body);
      return response;
    } on SocketException {
      throw FetchDataException("No Internet Exception");
    }
    return responseJson;
  }

  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body.toString());
        return responseJson;
      case 400:
        // throw BadRequestException(response.body.toString());
        //by prakhyat
        var responseJson = json.decode(response.body.toString());
        return responseJson;
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
