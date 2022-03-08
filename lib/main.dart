import 'package:flutter/material.dart';
import 'utilities/route_generator.dart';
import 'utilities/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gmail Clone',
      theme: lightTheme,
      onGenerateRoute: (routeSettings) => generateRoute(routeSettings),
    );
  }
}
