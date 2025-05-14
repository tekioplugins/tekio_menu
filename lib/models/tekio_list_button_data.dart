import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:tekio_menu/models/tekio_button_enum.dart';
import 'package:tekio_menu/models/tekio_button_data.dart';

part '../generated/models/tekio_list_button_data.g.dart';

@JsonSerializable()
class TekioListButtonData {
  @JsonKey(name: 'order')
  int? order;
  @JsonKey(name: 'buttonListKey')
  String? buttonListKey;
  @JsonKey(
    name: 'buttonType',
    defaultValue: TekioButtonEnum.unknown,
    unknownEnumValue: TekioButtonEnum.unknown,
  )
  TekioButtonEnum buttonType;
  @JsonKey(name: 'buttonItems')
  List<TekioButtonData> buttonItems;

  TekioListButtonData({
    this.order,
    required this.buttonType,
    required List<TekioButtonData> buttonItems,
    this.buttonListKey,
  }) : buttonItems = buttonItems.sorted(
         (a, b) => (a.order ?? 0).compareTo((b.order ?? 0)),
       );

  factory TekioListButtonData.fromJson(Map<String, dynamic> json) =>
      _$TekioListButtonDataFromJson(json);

  Map<String, dynamic> toJson() => _$TekioListButtonDataToJson(this);
}
