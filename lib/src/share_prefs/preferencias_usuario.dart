import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuario {
  static final PreferenciasUsuario _instancia =
      new PreferenciasUsuario._internal();

  SharedPreferences _prefs;

  factory PreferenciasUsuario() {
    return _instancia;
  }

  PreferenciasUsuario._internal();

  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }

  get genero {
    return this._prefs.getInt('genero') ?? 1;
  }

  set genero(int value) {
    this._prefs.setInt('genero', value);
  }

  get colorSecundario {
    return this._prefs.getBool('colorSecundario') ?? false;
  }

  set colorSecundario(bool value) {
    this._prefs.setBool('colorSecundario', value);
  }

  get nombreUsuario {
    return this._prefs.getString('nombreUsuario') ?? '';
  }

  set nombreUsuario(String value) {
    this._prefs.setString('nombreUsuario', value);
  }

  get ultimaPagina {
    return this._prefs.getString('ultimaPagina') ?? 'home';
  }

  set ultimaPagina(String value) {
    this._prefs.setString('ultimaPagina', value);
  }
}
