import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'tekio_data.dart';

part '../generated/models/tekio_menu_button_data.g.dart';

@JsonSerializable()
class TekioMenuButtonData {
  @JsonKey(name: 'order')
  int? order;
  @JsonKey(name: 'menuButtonHeight', defaultValue: 100.0)
  double menuButtonHeight;
  @JsonKey(name: 'menuButtonWidth', defaultValue: 100.0)
  double menuButtonWidth;
  @JsonKey(name: 'menuButtonSpacing', defaultValue: 10.0)
  double menuButtonSpacing;
  @JsonKey(name: 'menuButtonKey')
  String? menuButtonKey;
  @JsonKey(
    name: 'buttonType',
    defaultValue: TekioButtonEnum.unknown,
    unknownEnumValue: TekioButtonEnum.unknown,
  )
  TekioButtonEnum buttonType;
  @JsonKey(name: 'buttonItems', defaultValue: [])
  List<TekioButtonData> buttonItems;

  TekioMenuButtonData({
    this.order,
    required this.buttonType,
    required List<TekioButtonData> buttonItems,
    this.menuButtonKey,
    required this.menuButtonHeight,
    required this.menuButtonWidth,
    required this.menuButtonSpacing,
  }) : buttonItems = buttonItems.sorted(
         (a, b) => (a.order ?? 0).compareTo((b.order ?? 0)),
       );

  factory TekioMenuButtonData.fromJson(Map<String, dynamic> json) =>
      _$TekioMenuButtonDataFromJson(json);

  Map<String, dynamic> toJson() => _$TekioMenuButtonDataToJson(this);
}
