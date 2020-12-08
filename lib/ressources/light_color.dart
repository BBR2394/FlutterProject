import 'package:flutter/material.dart';

class LightColor {

  LightColor._();

  //pour specifie que c'est une couleur material
  //une material coolor c'est une map de couleur
  //mais qu'il y a de base
  //(c'est le swatch
  static const Map<int, Color> materialBlueMap = <int, Color> {
    50: Color(0x11219F5E),
    100:Color(0x44219F5E),
    200:Color(0x77219F5E),
    300:Color(0x99219F5E),
    400:Color(0xAA219F5E),
    500:Color(0xBB219F5E),
    600:Color(0xCC1D995B),
    700:Color(0xDD21AE68),
    800:Color(0xEE29D37E),
    900:Color(0xFF34FF98)
  };

  //mais ce n'est pas encore une matyerial color, pour la faire devenir une material color:
  static const MaterialColor materialBlue = MaterialColor(0xBB219F5E, materialBlueMap);

  //ca c'est pour le couleur
  static const Color breakedBlack = Color(0x80000000);


}