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
            Text(
              '${stateItem.stateName}',
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              dense: true,
              isThreeLine: true,
              leading: Text('Active : ${stateItem.active}'),
              trailing: Text('Deaths :${stateItem.deaths}'),
              title: Text('Confirmed :${stateItem.confirmed}'),
              subtitle: Text('Recovered :${stateItem.recovered}'),
            ),
          ],
        );
      },
    );
  }
}
