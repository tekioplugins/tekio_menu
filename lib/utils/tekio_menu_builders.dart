import 'package:flutter/material.dart';
import 'package:tekio_menu/models/tekio_menu_button_data.dart';
import 'package:tekio_menu/widgets/buttons/icon_carousel.dart';
import 'package:tekio_menu/widgets/buttons/image_button.dart';
import 'package:tekio_menu/widgets/buttons/image_carousel.dart';
import 'package:tekio_menu/widgets/buttons/text_carousel.dart';

Widget buildIconCarousel(TekioMenuButtonData menuButton) =>
    TekioIconCarousel(menuButton: menuButton);

Widget buildImageCarousel(TekioMenuButtonData menuButton) =>
    TekioImageCarousel(menuButton: menuButton);

Widget buildTextCarousel(TekioMenuButtonData menuButton) =>
    TekioTextCarousel(menuButton: menuButton);

Widget buildImageButton(TekioMenuButtonData menuButton) =>
    TekioImageButton(menuButton: menuButton);

Widget buildUnknown(TekioMenuButtonData menuButton) => const SizedBox.shrink();
