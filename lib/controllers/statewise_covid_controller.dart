import 'package:covid19_info/database/api_service.dart';
import 'package:covid19_info/models/stateItem.dart';
import 'package:flutter/cupertino.dart';

class StateWiseCovidController with ChangeNotifier {
  List<StateItem> states;

  StateWiseCovidController() {
    initStateData();
  }

  initStateData() {
    states = [];
    ApiService.instance.stateWiseData.forEach((stateData) {
      states.add(StateItem.fromAPI(stateData));
    });
  }
}
