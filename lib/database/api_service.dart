import 'dart:convert';

import 'package:http/http.dart' as http;

import 'api_exception.dart';

class ApiService {
  ApiService._();

  static final ApiService instance = ApiService._();
  final String url = "https://api.covid19india.org/data.json";

  Map<String, dynamic> _apiData;

  initData() async {
    try {
      http.Response res = await http.get(Uri.parse(url));
      if (res.statusCode == 200) {
        _apiData = jsonDecode(res.body);
      } else {
        print("${res.statusCode} : ${res.body}");
        throw ApiException("${res.statusCode} : ${res.body}");
      }
    } catch (e) {
      throw ApiException(e.toString());
    }
  }

  List<Map<String, dynamic>> get caseTimeSeries => _apiData["case_time_series"];

  List<Map<String, dynamic>> get stateWiseData => _apiData["statewise"];

  List<Map<String, dynamic>> get tested => _apiData["tested"];

  Map<String, dynamic> get latest => caseTimeSeries.last;
}
