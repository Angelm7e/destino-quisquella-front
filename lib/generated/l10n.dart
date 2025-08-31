// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Destino Quisquella`
  String get appTitle {
    return Intl.message(
      'Destino Quisquella',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  /// `iniciar sesión`
  String get loginTitle {
    return Intl.message(
      'iniciar sesión',
      name: 'loginTitle',
      desc: '',
      args: [],
    );
  }

  /// `Destino Quisquella`
  String get loginSubtitle {
    return Intl.message(
      'Destino Quisquella',
      name: 'loginSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Correo electronico`
  String get emailLabel {
    return Intl.message(
      'Correo electronico',
      name: 'emailLabel',
      desc: '',
      args: [],
    );
  }

  /// `Correo electronico`
  String get emailHint {
    return Intl.message(
      'Correo electronico',
      name: 'emailHint',
      desc: '',
      args: [],
    );
  }

  /// `Contraseña`
  String get passwordLabel {
    return Intl.message(
      'Contraseña',
      name: 'passwordLabel',
      desc: '',
      args: [],
    );
  }

  /// `Digite su contraseña`
  String get passwordHint {
    return Intl.message(
      'Digite su contraseña',
      name: 'passwordHint',
      desc: '',
      args: [],
    );
  }

  /// `¿Olvidaste tu contraseña?`
  String get forgotPassword {
    return Intl.message(
      '¿Olvidaste tu contraseña?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Iniciar sesión`
  String get loginButton {
    return Intl.message(
      'Iniciar sesión',
      name: 'loginButton',
      desc: '',
      args: [],
    );
  }

  /// `Registrarse`
  String get noAccountPrompt {
    return Intl.message(
      'Registrarse',
      name: 'noAccountPrompt',
      desc: '',
      args: [],
    );
  }

  /// `Registrarse`
  String get signUp {
    return Intl.message(
      'Registrarse',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Favoritos`
  String get favorites {
    return Intl.message(
      'Favoritos',
      name: 'favorites',
      desc: '',
      args: [],
    );
  }

  /// `Configuraciones`
  String get settings {
    return Intl.message(
      'Configuraciones',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Editar perfil`
  String get editProfile {
    return Intl.message(
      'Editar perfil',
      name: 'editProfile',
      desc: '',
      args: [],
    );
  }

  /// `Cerrar sesión`
  String get logout {
    return Intl.message(
      'Cerrar sesión',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `¿Está seguro que desea cerrar sesión?`
  String get logoutConfirmation {
    return Intl.message(
      '¿Está seguro que desea cerrar sesión?',
      name: 'logoutConfirmation',
      desc: '',
      args: [],
    );
  }

  /// `Confirmar`
  String get confirm {
    return Intl.message(
      'Confirmar',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Cancelar`
  String get cancel {
    return Intl.message(
      'Cancelar',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Inicio`
  String get home {
    return Intl.message(
      'Inicio',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Buscar`
  String get search {
    return Intl.message(
      'Buscar',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Perfil`
  String get profile {
    return Intl.message(
      'Perfil',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Cerca de ti`
  String get closeToYou {
    return Intl.message(
      'Cerca de ti',
      name: 'closeToYou',
      desc: '',
      args: [],
    );
  }

  /// `Mis Reviews`
  String get myReviews {
    return Intl.message(
      'Mis Reviews',
      name: 'myReviews',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'es', countryCode: 'DO'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
