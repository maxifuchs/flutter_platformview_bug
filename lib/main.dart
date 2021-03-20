import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'ChooseLocation.dart';

main() => runApp(CupertinoApp(home: MyApp()));

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: ChooseLocationWidget(),
      localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
    );
  }
}