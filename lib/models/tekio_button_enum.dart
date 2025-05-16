import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:tekio_menu/models/tekio_menu_button_data.dart';
import 'package:tekio_menu/utils/tekio_menu_builders.dart';

enum TekioButtonEnum {
  @JsonValue('iconCarousel')
  iconCarousel(buildIconCarousel),
  @JsonValue('textCarousel')
  textCarousel(buildTextCarousel),
  @JsonValue('imageCarousel')
  imageCarousel(buildImageCarousel),
  @JsonValue('imageButton')
  imageButton(buildImageButton),
  unknown(buildUnknown);

  final Widget Function(TekioMenuButtonData) builder;

  const TekioButtonEnum(this.builder);

  Widget buildButton(TekioMenuButtonData menuButton) => builder(menuButton);
}
