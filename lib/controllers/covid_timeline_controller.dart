import 'package:covid19_info/database/api_service.dart';
import 'package:covid19_info/models/timeLineItem.dart';
import 'package:flutter/cupertino.dart';

class CovidTimelineController with ChangeNotifier {
  List<TimeLineItem> timeline;

  CovidTimelineController() {
    initTimeline();
  }

  initTimeline() {
    timeline = [];
    ApiService.instance.caseTimeSeries.reversed.forEach((timelineData) {
      timeline.add(TimeLineItem.fromAPI(timelineData));
    });
  }
}
