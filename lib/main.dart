import 'package:flutter/material.dart';
import 'package:form_app/src/ui/modules/home/screen/model_home.dart';
import 'package:form_app/src/ui/modules/home/screen/view_home.dart';

import 'src/config/localizations.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      localizationsDelegates: [
        MyAppLocalizations.delegate,
      ],
      title: 'Material App',
      home: InitApp(),
    );
  }
}

class InitApp extends StatelessWidget {
  const InitApp({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> data =
        MyAppLocalizations.of(context)?.getJsonTranslate() ?? {};
    return ViewHome(model: ModelHome(data));
  }
}
