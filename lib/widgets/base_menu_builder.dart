import 'package:flutter/material.dart';
import 'package:tekio_menu/models/tekio_menu_data.dart';

class TekioBaseMenuBuilder extends NotificationListener<TekioMenuNotifier> {
  final TekioMenuData baseMenuData;
  final Function(String path) navigateTo;
  TekioBaseMenuBuilder({required this.baseMenuData, required this.navigateTo})
    : super(
        key: Key(baseMenuData.menuKey ?? ''),
        onNotification: (notification) {
          navigateTo(notification.navPath);
          return true;
        },
        child: ListView(
          children:
              baseMenuData.menuListButtons
                  .map((e) => e.buttonType.buildButton(e))
                  .toList(),
        ),
      );
}

class TekioMenuNotifier extends Notification {
  final String navPath;
  TekioMenuNotifier({required this.navPath});
}
