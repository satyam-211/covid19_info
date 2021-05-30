import 'package:covid19_info/database/api_service.dart';
import 'package:flutter/cupertino.dart';

class TestingDataController with ChangeNotifier {
  Map<String, dynamic> initTestingData() {
    return ApiService.instance.latest;
  }
}
