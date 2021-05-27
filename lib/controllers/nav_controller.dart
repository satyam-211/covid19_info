import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:covid19_info/controllers/covid_timeline_controller.dart';
import 'package:covid19_info/controllers/statewise_covid_controller.dart';
import 'package:covid19_info/controllers/testing_data_controller.dart';
import 'package:covid19_info/views/covidTimelineScreen/covid_timeline_screen.dart';
import 'package:covid19_info/views/testingDataScreen/testing_data_screen.dart';
import 'package:covid19_info/views/stateWiseCovidInfoScreen/state_wise_covid_info_screen.dart';

class NavigationController with ChangeNotifier {
  final List<Widget> _screens = [
    ChangeNotifierProvider<CovidTimelineController>(
      create: (context) => CovidTimelineController(),
      child: CovidTimeLineScreen(key: PageStorageKey('covid_timeline')),
    ),
    ChangeNotifierProvider<StateWiseCovidController>(
      create: (context) => StateWiseCovidController(),
      child: StateWiseCovidInfoScreen(),
    ),
    ChangeNotifierProvider<TestingDataController>(
      create: (context) => TestingDataController(),
      child: TestingDataScreen(),
    ),
  ];

  final Map<String, IconData> icons = const {
    'Timeline': Icons.timeline,
    'Statewise': Icons.home_work_outlined,
    'Testing': Icons.medical_services,
  };

  int currentIndex = 0;

  changeIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  get title {
    if (currentIndex == 0)
      return 'Covid Timeline';
    else if (currentIndex == 1)
      return 'Statewise Covid Data';
    else if (currentIndex == 2) return 'Testing Data';
  }

  get screen => _screens[currentIndex];
}
