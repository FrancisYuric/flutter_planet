import 'package:flutter/material.dart';
import 'package:flutter_planet/planets/model/bean/planets.dart';
import 'package:flutter_planet/planets/ui/home/PlanetRow.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new PlanetRow(planets[0]);
  }
}
