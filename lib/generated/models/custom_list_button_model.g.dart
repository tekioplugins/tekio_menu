// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/custom_list_button_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomListButtonModel _$CustomListButtonModelFromJson(
  Map<String, dynamic> json,
) => CustomListButtonModel(
  buttonType: $enumDecodeNullable(
    _$CustomButtonEnumEnumMap,
    json['buttonType'],
  ),
  buttonItems:
      (json['buttonItems'] as List<dynamic>)
          .map((e) => CustomButtonModel.fromJson(e as Map<String, dynamic>))
          .toList(),
)..buttonListKey = json['buttonListKey'] as String?;

Map<String, dynamic> _$CustomListButtonModelToJson(
  CustomListButtonModel instance,
) => <String, dynamic>{
  'buttonListKey': instance.buttonListKey,
  'buttonType': _$CustomButtonEnumEnumMap[instance.buttonType],
  'buttonItems': instance.buttonItems,
};

const _$CustomButtonEnumEnumMap = {
  CustomButtonEnum.iconCarousel: 'iconCarousel',
  CustomButtonEnum.textCarousel: 'textCarousel',
  CustomButtonEnum.imageCarousel: 'imageCarousel',
  CustomButtonEnum.imageButton: 'imageButton',
};
