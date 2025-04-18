import 'package:flutter/widgets.dart';
import 'package:tekio/widgets/buttons/icon_carousel.dart';
import 'package:tekio/widgets/buttons/image_button.dart';
import 'package:tekio/widgets/buttons/image_carousel.dart';
import 'package:tekio/widgets/buttons/text_carousel.dart';
import 'package:tekio/models/custom_button/custom_button_enum.dart';
import 'package:tekio/models/custom_button/custom_button_model.dart';

class TekioButtonLayoutBuilder extends StatelessWidget {
  final CustomButtonEnum customButtonType;
  final List<CustomButtonModel> buttonItems;

  const TekioButtonLayoutBuilder({
    required this.customButtonType,
    required this.buttonItems,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    switch (customButtonType) {
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
