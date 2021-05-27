import 'package:covid19_info/main.dart';
import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  final String errorMessage;
  const ErrorScreen({Key key, @required this.errorMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(errorMessage);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Sorry, an error occured'),
            IconButton(
                icon: Icon(Icons.refresh),
                onPressed: () {
                  Navigator.of(context).pop();
                  runApp(MyApp());
                })
          ],
        ),
      ),
    );
  }
}
