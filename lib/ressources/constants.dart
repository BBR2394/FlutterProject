/* cours du 24 Novembre */

enum Environnment {DEV, STAGING, PROD}

class Constants {
  static Map<String, dynamic> _config;

  static void setEnvironnment(Environnment env) {
    switch(env) {
      case Environnment.DEV:
        _config = _Config.devConstants;
        break;
      case Environnment.STAGING:
        _config = _Config.staggingConstants;
        break;
      case Environnment.PROD:
        _config = _Config.prodConstants;
        break;
    }
  }

  static dynamic get serverURL {
    return _config[_Config.SERVER_URL];
  }

  static dynamic get whereAmI {
    return _config[_Config.WHERE_AM_I];
  }

  static bool get isDebug {
    return _config[_Config.IS_DEBUGGABLE];
  }
}

//
mixin _Config {
  static const SERVER_URL = "BASE_URL";
  static const WHERE_AM_I = "WHERE_AM_I";

  static const IS_DEBUGGABLE = "IS_DEBUGGABLE";

  static Map<String, dynamic> devConstants = {
    SERVER_URL: 'https://rickandmortyapi.com/api/',
    WHERE_AM_I: "DEV",
    IS_DEBUGGABLE: true
  };

  static Map<String, dynamic> staggingConstants = {
    SERVER_URL: "http://www.google.com",
    WHERE_AM_I: "STAGGING",
    IS_DEBUGGABLE: true
  };

  static Map<String, dynamic> prodConstants = {
    SERVER_URL: "http://www.google.com",
    WHERE_AM_I: "PROD",
    IS_DEBUGGABLE: false
  };
}