import 'package:astro_traits/horoscope_details.dart';
import 'package:astro_traits/horoscopelist.dart';
import 'package:astro_traits/model/horoscope.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch(settings.name){
      case "/":
        return MaterialPageRoute(builder: (context)=> Horoscopelist());
      case "/burcDetay":
        final secilen = settings.arguments as Horoscope;
        return MaterialPageRoute(builder: (context)=>HoroscopeDetails(selectedHoroscope: secilen));
    }
  }
}
