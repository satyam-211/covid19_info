import 'package:covid19_info/controllers/testing_data_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TestingDataScreen extends StatelessWidget {
  const TestingDataScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<TestingDataController>(context);
    final testingData = controller.initTestingData();
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
            flex: 2,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Total Confirmed',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontWeight: FontWeight.bold)),
                  Text(testingData['totalconfirmed']),
                ],
              ),
            )),
        Flexible(
            flex: 2,
            child: Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Total Deceased',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontWeight: FontWeight.bold)),
                Text(
                  testingData['totaldeceased'],
                ),
              ],
            ))),
        Flexible(
            flex: 2,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Total Recovered',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontWeight: FontWeight.bold)),
                  Text(testingData['totalrecovered']),
                ],
              ),
            )),
      ],
    );
  }
}
