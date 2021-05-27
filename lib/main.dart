import 'package:covid19_info/controllers/nav_controller.dart';
import 'package:covid19_info/database/api_service.dart';
import 'package:covid19_info/views/errorScreen/error_screen.dart';
import 'package:covid19_info/views/loadingScreen/loading_screen.dart';
import 'package:covid19_info/views/navigationScreen/nav_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid19 India',
      theme: ThemeData.dark(),
      home: FutureBuilder(
        future: ApiService.instance.initData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return LoadingScreen();
          }
          if (snapshot.hasError) {
            return ErrorScreen(
              errorMessage: snapshot.error.toString(),
            );
          }
          return ChangeNotifierProvider<NavigationController>(
              create: (context) => NavigationController(),
              child: NavigationScreen());
        },
      ),
    );
  }
}
