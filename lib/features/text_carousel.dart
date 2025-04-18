import 'package:flutter/material.dart';
import 'package:tekio/models/custom_button/custom_button_model.dart';

class TekioTextCarousel extends StatelessWidget {
  final List<CustomButtonModel> buttonItems;

  const TekioTextCarousel({required this.buttonItems, super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 50),
      child: CarouselView(
        itemExtent: 120.0,
        shrinkExtent: 120.0,
        onTap: (index) => print(buttonItems[index].navPath),
        children:
            buttonItems.map((e) {
              return Text(
                e.label ?? '',
                style: const TextStyle(fontWeight: FontWeight.bold),
                overflow: TextOverflow.clip,
                softWrap: false,
              );
            }).toList(),
      ),
    );
  }
}
