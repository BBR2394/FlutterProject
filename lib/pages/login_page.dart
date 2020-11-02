import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'custom_card.dart';
/*import 'package:flutter_app_m2/data/dataSources/localDataSource/CharacterHiveProvider.dart';
import 'package:flutter_app_m2/data/dataSources/remoteDataSource/dio_helper.dart';
import 'package:flutter_app_m2/data/entities/anAnswer.dart';

import 'data/dataSources/firestoreDataSource/firestore.dart';*/

class LoginPage extends StatefulWidget {

  static const String routeName = '/login';
  const LoginPage({Key key}): super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {
  String toto;
  String result;

  //CharacterHiveProvider _provider;

  @override
  void initState() {
    super.initState();
  }

  //quand je rajouterais hiv
  /*
  //on a careent fait une methode a part car il y avait quelques probleme
  Future<void> _insertInHive(dynamic object) async {
    //??= equivalent de isNull
    //et évite de faire un if(_provider == null) { _provider = ...chp.create }
    _provider ??= await CharacterHiveProvider.create();
    return _provider.add(object.name, object);
  }
*/

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context).settings.arguments;
    if (arguments != null && arguments is Map) {
      if (arguments.containsKey('exemple')) {
        //toto = arguments['exemple'];
        toto = 'bonroerufkljfgls';
      }
    }

    /*return Scaffold(
      appBar: AppBar(
        title: Text("la page de login"),
      ),
      body: FutureBuilder(
        future: DioHelper.instance.get('/character'),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot ) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              final myAnswer = Autogenerated.fromJson(snapshot.data);
              final character = myAnswer.results[0];

              //le provider c'est la bdd et ca ajoute le perso recu dans la bdd
              //soit on avait le provider dans le init state
              //_provider.add(character.name, character);
              //soit la fonction séparé
              _insertInHive(character);
              /*Firestore.instance
                .insertDocument("character", character.toJson())
                .then((value) {
                  setState(() {
                    result = "Done";
                  });
              }) ;*/
              return Center(
                  child: Text(myAnswer.info.count.toString())
              );
            }
            else {
              return Text('y a rien');
            }
          }
          else {
            return CircularProgressIndicator();
          }
        },
      )
      ,
    );*/
    return Scaffold(
      appBar: AppBar(
        title: Text("la page de login"),
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
