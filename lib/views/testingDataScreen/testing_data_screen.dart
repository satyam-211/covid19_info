import 'package:covid19_info/controllers/testing_data_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TestingDataScreen extends StatelessWidget {
  const TestingDataScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<TestingDataController>(context);
    final testingData = controller.initTestingData();
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
              flex: 2,
              child: Container(
                child: Column(
                  children: [
                    Text('Total Confirmed'),
                    Text(testingData['totalconfirmed']),
                  ],
                ),
              )),
          Flexible(
              flex: 2,
              child: Container(
                  child: Column(
                children: [
                  Text('Total Deceased'),
                  Text(
                    testingData['totaldeceased'],
                  ),
                ],
              ))),
          Flexible(
              flex: 2,
              child: Container(
                child: Column(
                  children: [
                    Text('Total Recovered'),
                    Text(testingData['totalrecovered']),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
