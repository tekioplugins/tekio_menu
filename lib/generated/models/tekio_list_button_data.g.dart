// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/tekio_list_button_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TekioListButtonData _$TekioListButtonDataFromJson(Map<String, dynamic> json) =>
    TekioListButtonData(
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
      buttonListKey: json['buttonListKey'] as String?,
    );

Map<String, dynamic> _$TekioListButtonDataToJson(
  TekioListButtonData instance,
) => <String, dynamic>{
  'order': instance.order,
  'buttonListKey': instance.buttonListKey,
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
