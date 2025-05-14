import 'package:flutter/material.dart';
import 'package:tekio_menu/models/tekio_menu_data.dart';

class TekioBaseMenuBuilder extends StatelessWidget {
  final TekioMenuData baseMenuData;
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
            baseMenuData.menuListItems
                .map((e) => e.buttonType.buildButton(e.buttonItems))
                .toList(),
      ),
    );
  }
}

class TekioMenuNotifier extends Notification {
  final String navPath;
  TekioMenuNotifier({required this.navPath});
}
