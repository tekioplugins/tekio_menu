// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/tekio_button_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TekioButtonData _$TekioButtonDataFromJson(Map<String, dynamic> json) =>
    TekioButtonData(
      iconCode: json['iconCode'] as String?,
      imageUrl: json['imageUrl'] as String?,
      label: json['label'] as String?,
      navPath: json['navPath'] as String,
    );

Map<String, dynamic> _$TekioButtonDataToJson(TekioButtonData instance) =>
    <String, dynamic>{
      'iconCode': instance.iconCode,
      'imageUrl': instance.imageUrl,
      'label': instance.label,
      'navPath': instance.navPath,
    };
