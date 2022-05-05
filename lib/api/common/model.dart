import 'package:freezed_annotation/freezed_annotation.dart'; //import freezed not json annotation
part 'model.freezed.dart'; // ptf
part 'model.g.dart'; //pts

@freezed
class ApiCommon with _$ApiCommon {
  const factory ApiCommon(
      {@JsonKey(name: "poster_path") required String? image,
      @JsonKey(name: "backdrop_path") required String? backImage,
      @JsonKey(name: "original_title") required String? title,
      @JsonKey(name: "media_type") required String? type,
      @JsonKey(name: "overview") required String? overView}) = _ApiCommon;

  factory ApiCommon.fromJson(Map<String, dynamic> json) =>
      _$ApiCommonFromJson(json);
}
