import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {

  CustomCard({Key key});


  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.purple,
      elevation: 20,
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Icon(Icons.ac_unit_rounded),
            Text("bonjour de la carte qui est un stateless widget")
          ],
        )
    );
  }
}

