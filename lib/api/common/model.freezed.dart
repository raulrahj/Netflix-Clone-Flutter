// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiCommon _$ApiCommonFromJson(Map<String, dynamic> json) {
  return _ApiCommon.fromJson(json);
}

/// @nodoc
class _$ApiCommonTearOff {
  const _$ApiCommonTearOff();

  _ApiCommon call(
      {@JsonKey(name: "poster_path") required String? image,
      @JsonKey(name: "backdrop_path") required String? backImage,
      @JsonKey(name: "original_title") required String? title,
      @JsonKey(name: "media_type") required String? type,
      @JsonKey(name: "overview") required String? overView}) {
    return _ApiCommon(
      image: image,
      backImage: backImage,
      title: title,
      type: type,
      overView: overView,
    );
  }

  ApiCommon fromJson(Map<String, Object?> json) {
    return ApiCommon.fromJson(json);
  }
}

/// @nodoc
const $ApiCommon = _$ApiCommonTearOff();

/// @nodoc
mixin _$ApiCommon {
  @JsonKey(name: "poster_path")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "backdrop_path")
  String? get backImage => throw _privateConstructorUsedError;
  @JsonKey(name: "original_title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "media_type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "overview")
  String? get overView => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiCommonCopyWith<ApiCommon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiCommonCopyWith<$Res> {
  factory $ApiCommonCopyWith(ApiCommon value, $Res Function(ApiCommon) then) =
      _$ApiCommonCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "poster_path") String? image,
      @JsonKey(name: "backdrop_path") String? backImage,
      @JsonKey(name: "original_title") String? title,
      @JsonKey(name: "media_type") String? type,
      @JsonKey(name: "overview") String? overView});
}

/// @nodoc
class _$ApiCommonCopyWithImpl<$Res> implements $ApiCommonCopyWith<$Res> {
  _$ApiCommonCopyWithImpl(this._value, this._then);

  final ApiCommon _value;
  // ignore: unused_field
  final $Res Function(ApiCommon) _then;

  @override
  $Res call({
    Object? image = freezed,
    Object? backImage = freezed,
    Object? title = freezed,
    Object? type = freezed,
    Object? overView = freezed,
  }) {
    return _then(_value.copyWith(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      backImage: backImage == freezed
          ? _value.backImage
          : backImage // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      overView: overView == freezed
          ? _value.overView
          : overView // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ApiCommonCopyWith<$Res> implements $ApiCommonCopyWith<$Res> {
  factory _$ApiCommonCopyWith(
          _ApiCommon value, $Res Function(_ApiCommon) then) =
      __$ApiCommonCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "poster_path") String? image,
      @JsonKey(name: "backdrop_path") String? backImage,
      @JsonKey(name: "original_title") String? title,
      @JsonKey(name: "media_type") String? type,
      @JsonKey(name: "overview") String? overView});
}

/// @nodoc
class __$ApiCommonCopyWithImpl<$Res> extends _$ApiCommonCopyWithImpl<$Res>
    implements _$ApiCommonCopyWith<$Res> {
  __$ApiCommonCopyWithImpl(_ApiCommon _value, $Res Function(_ApiCommon) _then)
      : super(_value, (v) => _then(v as _ApiCommon));

  @override
  _ApiCommon get _value => super._value as _ApiCommon;

  @override
  $Res call({
    Object? image = freezed,
    Object? backImage = freezed,
    Object? title = freezed,
    Object? type = freezed,
    Object? overView = freezed,
  }) {
    return _then(_ApiCommon(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      backImage: backImage == freezed
          ? _value.backImage
          : backImage // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      overView: overView == freezed
          ? _value.overView
          : overView // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiCommon implements _ApiCommon {
  const _$_ApiCommon(
      {@JsonKey(name: "poster_path") required this.image,
      @JsonKey(name: "backdrop_path") required this.backImage,
      @JsonKey(name: "original_title") required this.title,
      @JsonKey(name: "media_type") required this.type,
      @JsonKey(name: "overview") required this.overView});

  factory _$_ApiCommon.fromJson(Map<String, dynamic> json) =>
      _$$_ApiCommonFromJson(json);

  @override
  @JsonKey(name: "poster_path")
  final String? image;
  @override
  @JsonKey(name: "backdrop_path")
  final String? backImage;
  @override
  @JsonKey(name: "original_title")
  final String? title;
  @override
  @JsonKey(name: "media_type")
  final String? type;
  @override
  @JsonKey(name: "overview")
  final String? overView;

  @override
  String toString() {
    return 'ApiCommon(image: $image, backImage: $backImage, title: $title, type: $type, overView: $overView)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiCommon &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.backImage, backImage) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.overView, overView));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(backImage),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(overView));

  @JsonKey(ignore: true)
  @override
  _$ApiCommonCopyWith<_ApiCommon> get copyWith =>
      __$ApiCommonCopyWithImpl<_ApiCommon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiCommonToJson(this);
  }
}

abstract class _ApiCommon implements ApiCommon {
  const factory _ApiCommon(
      {@JsonKey(name: "poster_path") required String? image,
      @JsonKey(name: "backdrop_path") required String? backImage,
      @JsonKey(name: "original_title") required String? title,
      @JsonKey(name: "media_type") required String? type,
      @JsonKey(name: "overview") required String? overView}) = _$_ApiCommon;

  factory _ApiCommon.fromJson(Map<String, dynamic> json) =
      _$_ApiCommon.fromJson;

  @override
  @JsonKey(name: "poster_path")
  String? get image;
  @override
  @JsonKey(name: "backdrop_path")
  String? get backImage;
  @override
  @JsonKey(name: "original_title")
  String? get title;
  @override
  @JsonKey(name: "media_type")
  String? get type;
  @override
  @JsonKey(name: "overview")
  String? get overView;
  @override
  @JsonKey(ignore: true)
  _$ApiCommonCopyWith<_ApiCommon> get copyWith =>
      throw _privateConstructorUsedError;
}
