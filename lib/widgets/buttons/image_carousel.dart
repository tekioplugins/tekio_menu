import 'package:flutter/material.dart';
import 'package:tekio_menu/models/tekio_menu_button_data.dart';
import 'package:tekio_menu/widgets/base_menu_builder.dart';

class TekioImageCarousel extends Builder {
  final TekioMenuButtonData menuButton;

  TekioImageCarousel({required this.menuButton})
    : super(
        key: Key(menuButton.menuButtonKey ?? UniqueKey().toString()),
        builder:
            (context) => CarouselView(
              itemExtent: menuButton.menuButtonWidth,
              shrinkExtent: menuButton.menuButtonWidth * 0.90,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              onTap:
                  (index) => TekioMenuNotifier(
                    navPath: menuButton.buttonItems[index].navPath,
                  ).dispatch(context),
              children:
                  menuButton.buttonItems
                      .map(
                        (e) => Stack(
                          alignment: AlignmentDirectional.bottomStart,
                          children: [
                            Image(
                              width: double.infinity,
                              fit: BoxFit.fill,
                              image: NetworkImage(e.imageUrl ?? ''),
                            ),
                            if (e.label != null)
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 15.0,
                                  bottom: 15.0,
                                ),
                                child: Text(
                                  e.label ?? '',
                                  style:
                                      Theme.of(context)
                                          .textTheme
                                          .titleMedium, //TODO: Fix poor text visibility
                                ),
                              ),
                          ],
                        ),
                      )
                      .toList(),
            ),
      );
}
