
import 'package:flutter/material.dart';

import 'custom_card.dart';

class PrintCustomCard extends StatefulWidget {
  static const String routeName = '/printcc';
  const PrintCustomCard({Key key}): super(key: key);

  @override
  _PrintCustomCardState createState() => _PrintCustomCardState();

}

class _PrintCustomCardState extends State<PrintCustomCard> {
  String toto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("La page d'affichage de CustomCard"),
      ),
      body: Center(
          child: Column(
              children: [
                CustomCard(),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text('coucou'),
                )
              ])
      ),
    );
  }


}