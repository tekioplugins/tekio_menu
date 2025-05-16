import 'package:flutter/material.dart';
import 'package:tekio_menu/models/tekio_menu_data.dart';
import 'package:tekio_menu/utils/tekio_menu_decoration.dart';

class TekioBaseMenuBuilder extends NotificationListener<TekioMenuNotifier> {
  final TekioMenuData baseMenuData;
  final Function(String path) navigateTo;
  final TekioMenuDecoration menuDecoration;
  TekioBaseMenuBuilder({
    required this.baseMenuData,
    required this.navigateTo,
    this.menuDecoration = const TekioMenuDecoration(),
  }) : super(
         key: Key(baseMenuData.menuKey ?? UniqueKey().toString()),
         onNotification: (notification) {
           navigateTo(notification.navPath);
           return true;
         },
         child: ListView(
           children:
               baseMenuData.menuListButtons
                   .map(
                     (e) => Container(
                       padding: menuDecoration.menuButtonPadding,
                       height: e.menuButtonHeight,
                       child: e.buttonType.buildButton(e),
                     ),
                   )
                   .toList(),
         ),
       );
}

class TekioMenuNotifier extends Notification {
  final String navPath;
  TekioMenuNotifier({required this.navPath});
}
