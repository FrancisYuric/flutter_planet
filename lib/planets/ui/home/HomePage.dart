import 'package:flutter/material.dart';
import 'package:flutter_planet/planets/ui/home/GradientAppBar.dart';
import 'package:flutter_planet/planets/ui/home/HomePageBody.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        body: new Column(
      children: <Widget>[
        new GradientAppBar("treva"),
        new HomePageBody(),
        new HomePageBody(),
        new HomePageBody(),
        new HomePageBody()
      ],
    ));
  }
}
