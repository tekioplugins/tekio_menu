import 'package:flutter/material.dart';
import 'package:tekio_menu/models/tekio_menu_button_data.dart';
import 'package:tekio_menu/widgets/base_menu_builder.dart';

class TekioTextCarousel extends Builder {
  final TekioMenuButtonData menuButton;

  TekioTextCarousel({required this.menuButton, super.key})
    : super(
        builder:
            (context) => CarouselView(
              itemExtent: 120.0,
              shrinkExtent: 120.0,
              onTap:
                  (index) => TekioMenuNotifier(
                    navPath: menuButton.buttonItems[index].navPath,
                  ).dispatch(context),
              children:
                  menuButton.buttonItems.map((e) {
                    return Text(
                      e.label ?? '',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      overflow: TextOverflow.clip,
                      softWrap: false,
                      textAlign: TextAlign.center,
                    );
                  }).toList(),
            ),
      );
}
