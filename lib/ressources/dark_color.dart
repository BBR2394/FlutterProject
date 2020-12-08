
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DarkColor {
  //c'est un constructeur, il a aucun interet pour nous d'où le _
  DarkColor._();

  //pour specifie que c'est une couleur material
  //une material coolor c'est une map de couleur
  //mais qu'il y a de base
  //(c'est le swatch
  static const Map<int, Color> materialBlueMap = <int, Color> {
    50: Color(0x1194BEFF),
    100:Color(0x4494BEFF),
    200:Color(0x7794BEFF),
    300:Color(0x9994BEFF),
    400:Color(0xAA94BEFF),
    500:Color(0xBB94BEFF),
    600:Color(0xCC94BEFF),
    700:Color(0xDD94BEFF),
    800:Color(0xEE94BEFF),
    900:Color(0xFF94BEFF)
  };

  //mais ce n'est pas encore une matyerial color, pour la faire devenir une material color:
  static const MaterialColor materialBlue = MaterialColor(0xBB94BEFF, materialBlueMap);

  //ca c'est pour le couleur
  static const Color breakedBlack = Color(0x80000000);

}