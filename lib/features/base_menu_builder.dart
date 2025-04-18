import 'package:flutter/material.dart';
import 'package:tekio_menu/features/button_layout_builder.dart';
import 'package:tekio_menu/models/base_menu_model.dart';

class TekioBaseMenuBuilder extends StatelessWidget {
  final BaseMenuModel baseMenuData;
  const TekioBaseMenuBuilder({required this.baseMenuData, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:
          baseMenuData.homeListItems
              .map(
                (e) => TekioButtonLayoutBuilder(
                  customButtonType: e.buttonType!,
                  buttonItems: e.buttonItems,
                ),
              )
              .toList(),
    );
  }
}
