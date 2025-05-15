import 'package:flutter/material.dart';
import 'package:tekio_menu/models/tekio_list_button_data.dart';
import 'package:tekio_menu/widgets/buttons/icon_carousel.dart';
import 'package:tekio_menu/widgets/buttons/image_button.dart';
import 'package:tekio_menu/widgets/buttons/image_carousel.dart';
import 'package:tekio_menu/widgets/buttons/text_carousel.dart';

Widget buildIconCarousel(TekioListButtonData buttonItems) =>
    TekioIconCarousel(buttonItems: buttonItems);

Widget buildImageCarousel(TekioListButtonData buttonItems) =>
    TekioImageCarousel(buttonItems: buttonItems);

Widget buildTextCarousel(TekioListButtonData buttonItems) =>
    TekioTextCarousel(buttonItems: buttonItems);

Widget buildImageButton(TekioListButtonData buttonItems) =>
    TekioImageButton(buttonItems: buttonItems);

Widget buildUnknown(TekioListButtonData buttonItems) => const SizedBox.shrink();
