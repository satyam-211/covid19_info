import 'package:covid19_info/controllers/covid_timeline_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CovidTimeLineScreen extends StatelessWidget {
  const CovidTimeLineScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<CovidTimelineController>(context);
    return ListView.builder(
      itemCount: controller.timeline.length,
      itemBuilder: (context, index) {
        final item = controller.timeline[index];
        return ListTile(
          dense: true,
          isThreeLine: true,
          leading: Text(item.date),
          trailing: Text(item.deceased),
          title: Text(item.confirmed),
          subtitle: Text(item.recovered),
        );
      },
    );
  }
}
