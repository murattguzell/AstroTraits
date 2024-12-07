import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import 'model/horoscope.dart';

class HoroscopeDetails extends StatefulWidget {
  final Horoscope selectedHoroscope;

  const HoroscopeDetails({required this.selectedHoroscope, super.key});

  @override
  State<HoroscopeDetails> createState() => _HoroscopeDetailsState();
}

class _HoroscopeDetailsState extends State<HoroscopeDetails> {
  Color appBarColor = Colors.white;
  late PaletteGenerator _generator;

  @override
  void initState() {
    super.initState();
    appBarColorChange();
    //_generator = PaletteGenerator.fromImageProvider(AssetImage(name)))
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: appBarColor,
            leading: GestureDetector(
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            expandedHeight: 250,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                widget.selectedHoroscope.burcAdi + " " + "Burcu ve Özellikleri",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
              background: Image.asset(
                "images/" + widget.selectedHoroscope.burcBuyukResim,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Text(
                  widget.selectedHoroscope.burcDetayi,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  appBarColorChange() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage("images/${widget.selectedHoroscope.burcBuyukResim}"));
    setState(() {
      appBarColor = _generator.dominantColor!.color;

    });
  }
}
