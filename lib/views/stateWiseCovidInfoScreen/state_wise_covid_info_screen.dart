import 'package:covid19_info/controllers/statewise_covid_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StateWiseCovidInfoScreen extends StatelessWidget {
  const StateWiseCovidInfoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<StateWiseCovidController>(context);
    return ListView.builder(
      itemCount: controller.states.length,
      itemBuilder: (context, index) {
        final stateItem = controller.states[index];
        return Column(
          children: [
            Text('${stateItem.stateName}'),
            ListTile(
              dense: true,
              isThreeLine: true,
              leading: Text('${stateItem.active}'),
              trailing: Text('${stateItem.deaths}'),
              title: Text('${stateItem.confirmed}'),
              subtitle: Text('${stateItem.recovered}'),
            ),
          ],
        );
      },
    );
  }
}
