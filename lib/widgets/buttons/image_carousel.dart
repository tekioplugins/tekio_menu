import 'package:flutter/material.dart';
import 'package:tekio_menu/models/tekio_menu_button_data.dart';
import 'package:tekio_menu/widgets/base_menu_builder.dart';

class TekioImageCarousel extends StatelessWidget {
  final TekioMenuButtonData menuButton;

  const TekioImageCarousel({required this.menuButton, super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 200),
      child: CarouselView(
        itemExtent: 330,
        shrinkExtent: 200,
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
                        image: NetworkImage(
                          e.imageUrl ?? '', // Use Default image
                        ),
                      ),
                      if (e.label != null)
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15.0,
                            bottom: 15.0,
                          ),
                          child: Text(
                            e.label ?? '',
                            overflow: TextOverflow.clip,
                            softWrap: false,
                          ),
                        ),
                    ],
                  ),
                )
                .toList(),
      ),
    );
  }
}
