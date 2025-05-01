import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tekio_menu/features/base_menu_builder.dart';
import 'package:tekio_menu/models/base_menu_model.dart';

Future<void> main() async {
  runApp(FormExample());
}

class FormExample extends StatefulWidget {
  const FormExample({super.key});

  @override
  State<FormExample> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  final ColorScheme colorScheme = ColorScheme.fromSeed(seedColor: Colors.green);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorScheme: colorScheme),
      home: Scaffold(
        body: FutureBuilder<String>(
          future: rootBundle.loadString('lib/example.json'),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return TekioBaseMenuBuilder(
                baseMenuData: BaseMenuModel.fromJson(
                  jsonDecode(snapshot.data!),
                ),
                navigateTo: (path) => print(path),
              );
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
