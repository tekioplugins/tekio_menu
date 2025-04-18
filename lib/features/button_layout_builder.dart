import 'package:flutter/widgets.dart';
import 'package:tekio_menu/features/icon_carousel.dart';
import 'package:tekio_menu/features/image_button.dart';
import 'package:tekio_menu/features/image_carousel.dart';
import 'package:tekio_menu/features/text_carousel.dart';
import 'package:tekio_menu/models/custom_button_enum.dart';
import 'package:tekio_menu/models/custom_button_model.dart';

class TekioButtonLayoutBuilder extends StatelessWidget {
  final CustomButtonEnum buttonType;
  final List<CustomButtonModel> buttonItems;

  const TekioButtonLayoutBuilder({
    required this.buttonType,
    required this.buttonItems,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    switch (buttonType) {
      case CustomButtonEnum.iconCarousel:
        return TekioIconCarousel(buttonItems: buttonItems);
      case CustomButtonEnum.textCarousel:
        return TekioTextCarousel(buttonItems: buttonItems);
      case CustomButtonEnum.imageCarousel:
        return TekioImageCarousel(buttonItems: buttonItems);
      case CustomButtonEnum.imageButton:
        return TekioImageButton(buttonItems: buttonItems);
    }
  }
}
