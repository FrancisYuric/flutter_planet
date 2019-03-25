import 'package:flutter/material.dart';
import 'package:flutter_planet/planets/model/bean/planets.dart';

class PlanetRow extends StatelessWidget {
  final Planet planet;

  PlanetRow(this.planet);

  @override
  Widget build(BuildContext context) {
    final planetThumbnail = new Container(
      margin: new EdgeInsets.symmetric(vertical: 16.0),
      alignment: FractionalOffset.centerLeft,
      child: new Image(
        image: new AssetImage(planet.image),
        height: 92.0,
        width: 92.0,
      ),
    );
    final planetCard = new Container(
      height: 124.0,
      //向右正好偏移46个单位唱的
      margin: new EdgeInsets.only(left: 46.0),
      decoration: new BoxDecoration(
          color: new Color(0xFF333366),
          shape: BoxShape.rectangle,
          borderRadius: new BorderRadius.circular(8.0),
          boxShadow: <BoxShadow>[
            new BoxShadow(
                color: Colors.black12,
                blurRadius: 10.0,
                offset: new Offset(0.0, 10.0))
          ]),
    );
    return new Container(
      height: 120.0,
      margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
      //层叠结构，相当于android中的FrameLayout,so declare planetCard first,and then planetThumbnail
      child: new Stack(
        children: <Widget>[
          planetCard,
          planetThumbnail,
        ],
      ),
    );
  }
}

final baseTextStyle = const TextStyle(fontFamily: 'Poppins');
final regularTextStyle = baseTextStyle.copyWith(color: const Color(0xffb6b2df),
    fontSize: 9.0, fontWeight: FontWeight.w400);
final subHeaderTextStyle = regularTextStyle.copyWith(fontSize: 12.0);

