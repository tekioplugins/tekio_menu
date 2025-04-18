import 'package:flutter/widgets.dart';
import 'package:tekio_menu/features/icon_carousel.dart';
import 'package:tekio_menu/features/image_button.dart';
import 'package:tekio_menu/features/image_carousel.dart';
import 'package:tekio_menu/features/text_carousel.dart';
import 'package:tekio_menu/models/custom_button_enum.dart';
import 'package:tekio_menu/models/custom_list_button_model.dart';

class TekioButtonLayoutBuilder extends StatelessWidget {
  final CustomListButtonModel customListButtonModel;

  const TekioButtonLayoutBuilder({
    required this.customListButtonModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    switch (customListButtonModel.buttonType) {
      case CustomButtonEnum.iconCarousel:
        return TekioIconCarousel(customListButtonModel: customListButtonModel);
      case CustomButtonEnum.textCarousel:
        return TekioTextCarousel(customListButtonModel: customListButtonModel);
      case CustomButtonEnum.imageCarousel:
        return TekioImageCarousel(customListButtonModel: customListButtonModel);
      case CustomButtonEnum.imageButton:
        return TekioImageButton(customListButtonModel: customListButtonModel);
      default:
        return const SizedBox.shrink();
    }
  }
}
