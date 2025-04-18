import 'package:json_annotation/json_annotation.dart';

enum CustomButtonEnum {
  @JsonValue('iconCarousel')
  iconCarousel,
  @JsonValue('textCarousel')
  textCarousel,
  @JsonValue('imageCarousel')
  imageCarousel,
  @JsonValue('imageButton')
  imageButton,
}
