// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/tekio_menu_button_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TekioMenuButtonData _$TekioMenuButtonDataFromJson(Map<String, dynamic> json) =>
    TekioMenuButtonData(
      order: (json['order'] as num?)?.toInt(),
      buttonType:
          $enumDecodeNullable(
            _$TekioButtonEnumEnumMap,
            json['buttonType'],
            unknownValue: TekioButtonEnum.unknown,
          ) ??
          TekioButtonEnum.unknown,
      buttonItems:
          (json['buttonItems'] as List<dynamic>)
              .map((e) => TekioButtonData.fromJson(e as Map<String, dynamic>))
              .toList(),
      menuButtonKey: json['menuButtonKey'] as String?,
    );

Map<String, dynamic> _$TekioMenuButtonDataToJson(
  TekioMenuButtonData instance,
) => <String, dynamic>{
  'order': instance.order,
  'menuButtonKey': instance.menuButtonKey,
  'buttonType': _$TekioButtonEnumEnumMap[instance.buttonType]!,
  'buttonItems': instance.buttonItems,
};

const _$TekioButtonEnumEnumMap = {
  TekioButtonEnum.iconCarousel: 'iconCarousel',
  TekioButtonEnum.textCarousel: 'textCarousel',
  TekioButtonEnum.imageCarousel: 'imageCarousel',
  TekioButtonEnum.imageButton: 'imageButton',
  TekioButtonEnum.unknown: 'unknown',
};
