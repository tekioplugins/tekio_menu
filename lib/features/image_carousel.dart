import 'package:flutter/material.dart';
import 'package:tekio_menu/features/base_menu_builder.dart';
import 'package:tekio_menu/models/custom_list_button_model.dart';

class TekioImageCarousel extends StatelessWidget {
  final CustomListButtonModel customListButtonModel;

  const TekioImageCarousel({required this.customListButtonModel, super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 200),
      child: CarouselView(
        itemExtent: 330,
        shrinkExtent: 200,
        onTap:
            (index) => TekioMenuNotifier(
              navPath: customListButtonModel.buttonItems[index].navPath ?? '',
            ).dispatch(context),
        children:
            customListButtonModel.buttonItems
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
