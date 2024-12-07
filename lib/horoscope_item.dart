import 'package:astro_traits/model/horoscope.dart';
import 'package:flutter/material.dart';

class HoroscopeItem extends StatelessWidget {
  final Horoscope listelenecekBurc;

  const HoroscopeItem({required this.listelenecekBurc, super.key});

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: ListTile(
            leading: Image.asset("images/"+ listelenecekBurc.burcKucukResim,
            ),
            title: Text(listelenecekBurc.burcAdi,style: myTextStyle.headlineSmall),
            subtitle: Text(listelenecekBurc.burcTarihi,style: myTextStyle.titleMedium,),
            trailing: Icon(Icons.arrow_forward_ios,color: Colors.pink,),
          ),
        ),
      ),
    );
  }
}
