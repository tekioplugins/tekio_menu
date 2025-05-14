import 'package:flutter/material.dart';
import 'package:tekio_menu/models/tekio_button_data.dart';

import 'package:tekio_menu/widgets/buttons/icon_carousel.dart';
import 'package:tekio_menu/widgets/buttons/image_button.dart';
import 'package:tekio_menu/widgets/buttons/image_carousel.dart';
import 'package:tekio_menu/widgets/buttons/text_carousel.dart';

Widget buildIconCarousel(List<TekioButtonData> buttonItems) {
  return TekioIconCarousel(buttonItems: buttonItems);
}

Widget buildImageCarousel(List<TekioButtonData> buttonItems) {
  return TekioImageCarousel(buttonItems: buttonItems);
}

Widget buildTextCarousel(List<TekioButtonData> buttonItems) {
  return TekioTextCarousel(buttonItems: buttonItems);
}

Widget buildImageButton(List<TekioButtonData> buttonItems) {
  return TekioImageButton(buttonItems: buttonItems);
}

Widget buildUnknown(List<TekioButtonData> buttonItems) {
  return const SizedBox.shrink();
}
