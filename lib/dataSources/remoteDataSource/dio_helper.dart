import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mon_app_flutter_mdeuxiii/ressources/constants.dart';

class DioHelper {
  Dio dio;

  // ces trois lignes permettent de faire le singleton (singleton !...)
  // 'https://rickandmortyapi.com/api/'
  DioHelper._privateConstructor() {
    dio ??= Dio(BaseOptions(baseUrl: Constants.serverURL)); // veut dire : si c'est null, tu l'initialise
  }
  static final DioHelper _instance = DioHelper._privateConstructor();
  static DioHelper get instance => _instance;

  Future<dynamic> get(String route, [Map<String, dynamic> parameters]) async {
    dynamic responseJson;
    try {
      //await et async, dit au systeme qu'on fait qqch d'asynchrone, et qu'on attend le resultat de l'asynchrone
      final response = await dio.get(route, queryParameters: parameters);
      responseJson = response.data;
    } on SocketException catch (e) {
      throw Exception(e.message);
    } on DioError catch (e) {
      throw Exception(e.message);
    }
    return responseJson;
  }
}