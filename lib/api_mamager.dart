import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/api_constans.dart';
import 'package:news_app/model/SourseRespons.dart';

class ApiManager {
  static Future<SourseRespons> getSources() async {
    Uri url = Uri.https(ApiConstants.baseUrl, ApiConstants.sourseApi,
        {'apiKey': '692fa23558ca4006912af13292a2a6a2'});
    try {
      var response = await http.get(url);
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      return SourseRespons.fromJson(json);
    } catch (e) {
      throw e;
    }
  }
}
