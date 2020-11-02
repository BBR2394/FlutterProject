import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextPage extends StatefulWidget {

  static const String routeName = '/txtpage';
  const TextPage({Key key}): super(key: key);

  @override
  _TextPageState createState() => _TextPageState();

}

class _TextPageState extends State<TextPage> {
  String toto;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Page')
      ),
      body: Center(
        child: Text("Ceci est du text basique juste pour faire une route basique"),
      ),
    );
  }
}