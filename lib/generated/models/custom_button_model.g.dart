// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/custom_button_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomButtonModel _$CustomButtonModelFromJson(Map<String, dynamic> json) =>
    CustomButtonModel(
      iconCode: json['iconCode'] as String?,
      imageUrl: json['imageUrl'] as String?,
      label: json['label'] as String?,
      navPath: json['navPath'] as String?,
    );

Map<String, dynamic> _$CustomButtonModelToJson(CustomButtonModel instance) =>
    <String, dynamic>{
      'iconCode': instance.iconCode,
      'imageUrl': instance.imageUrl,
      'label': instance.label,
      'navPath': instance.navPath,
    };
