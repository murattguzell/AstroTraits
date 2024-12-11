import 'package:astro_traits/horoscopelist.dart';
import 'package:astro_traits/route_generator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
         primarySwatch: Colors.pink,
          appBarTheme: AppBarTheme(color: Colors.pink)
        ),
      onGenerateRoute:  RouteGenerator.routeGenerator,
    );
  }
}


