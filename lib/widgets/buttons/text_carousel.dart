import 'package:flutter/material.dart';
import 'package:tekio_menu/models/tekio_menu_button_data.dart';
import 'package:tekio_menu/widgets/base_menu_builder.dart';

class TekioTextCarousel extends Builder {
  final TekioMenuButtonData menuButton;

  TekioTextCarousel({required this.menuButton})
    : super(
        key: Key(menuButton.menuButtonKey ?? UniqueKey().toString()),
        builder:
            (context) => CarouselView(
              itemExtent: menuButton.menuButtonWidth,
              shrinkExtent: menuButton.menuButtonWidth,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: EdgeInsets.only(right: menuButton.menuButtonSpacing),
              onTap:
                  (index) => TekioMenuNotifier(
                    navPath: menuButton.buttonItems[index].navPath,
                  ).dispatch(context),
              children:
                  menuButton.buttonItems.map((e) {
                    return Padding(
                      key: Key(e.buttonKey ?? UniqueKey().toString()),
                      padding: const EdgeInsets.all(
                        8.0,
                      ), //TODO: Add to decoration
                      child: Text(
                        e.label ?? '',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    );
                  }).toList(),
            ),
      );
}
