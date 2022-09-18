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

  /// `Mditor`
  String get appName {
    return Intl.message(
      'Mditor',
      name: 'appName',
      desc: 'The application name',
      args: [],
    );
  }

  /// `Hello, {name}`
  String hello(Object name) {
    return Intl.message(
      'Hello, $name',
      name: 'hello',
      desc: 'A welcome message',
      args: [name],
    );
  }

  /// `Add`
  String get add {
    return Intl.message(
      'Add',
      name: 'add',
      desc: 'Add label',
      args: [],
    );
  }

  /// `Welcome`
  String get home {
    return Intl.message(
      'Welcome',
      name: 'home',
      desc: 'Home title',
      args: [],
    );
  }

  /// `Notebooks`
  String get notebooks {
    return Intl.message(
      'Notebooks',
      name: 'notebooks',
      desc: 'Label of notebooks',
      args: [],
    );
  }

  /// `New notebook`
  String get addNotebook {
    return Intl.message(
      'New notebook',
      name: 'addNotebook',
      desc: 'Label of add notebook',
      args: [],
    );
  }

  /// `No notebooks`
  String get noNotebooks {
    return Intl.message(
      'No notebooks',
      name: 'noNotebooks',
      desc: 'Message: no notebooks',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: 'Label of settings',
      args: [],
    );
  }

  /// `Start here`
  String get inputHint {
    return Intl.message(
      'Start here',
      name: 'inputHint',
      desc: 'Input hint for general editor',
      args: [],
    );
  }

  /// `mditor`
  String get nameInputHint {
    return Intl.message(
      'mditor',
      name: 'nameInputHint',
      desc: 'Input hint for name editor',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'CN'),
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
