import 'package:flutter/material.dart';
import 'package:tekio_menu/features/button_layout_builder.dart';
import 'package:tekio_menu/models/base_menu_model.dart';

class TekioBaseMenuBuilder extends StatelessWidget {
  final BaseMenuModel baseMenuData;
  final Function(String path) navigateTo;
  const TekioBaseMenuBuilder({
    required this.baseMenuData,
    required this.navigateTo,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NotificationListener<TekioMenuNotifier>(
      key: Key(baseMenuData.menuKey ?? ''),
      onNotification: (notification) {
        navigateTo(notification.navPath);
        return true;
      },
      child: ListView(
        children:
            baseMenuData.homeListItems
                .map(
                  (e) => TekioButtonLayoutBuilder(
                    buttonType: e.buttonType!,
                    buttonItems: e.buttonItems,
                    key: Key(e.buttonListKey ?? ''),
                  ),
                )
                .toList(),
      ),
    );
  }
}

class TekioMenuNotifier extends Notification {
  final String navPath;
  TekioMenuNotifier({required this.navPath});
}
