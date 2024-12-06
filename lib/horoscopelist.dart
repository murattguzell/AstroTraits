import 'package:astro_traits/data/string.dart';
import 'package:flutter/material.dart';

import 'model/horoscope.dart';

class Horoscopelist extends StatelessWidget {
  late List<Horoscope> tumBurclar;

  HoroscopeList() {
    tumBurclar = veriKaynaginiHazirla();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Burçlar Lisitesi"),
      ),
      body: Center(
        child: Text("Burclar buraya gelecek"),
      ),
    );
  }

  List<Horoscope> veriKaynaginiHazirla() {
    List<Horoscope> gecici = [];
    for (int i = 0; i < 12; i++) {
      var burcAdi = Strings.BURC_ADLARI[i];
      var burcTarihleri = Strings.BURC_TARIHLERI[i];
      var burcDetay = Strings.BURC_GENEL_OZELLIKLERI[i];
      var burcKucukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + '${i + 1}.png';
      var burcBuyukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + "_buyuk${i + 1}.png";
      Horoscope eklenecekBurc = Horoscope(
          burcAdi, burcTarihleri, burcDetay, burcKucukResim, burcBuyukResim);
      gecici.add(eklenecekBurc);
    }
    return gecici;
  }
}
