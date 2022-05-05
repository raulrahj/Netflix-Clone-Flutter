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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiDownloads _$ApiDownloadsFromJson(Map<String, dynamic> json) {
  return _ApiDownloads.fromJson(json);
}

/// @nodoc
mixin _$ApiDownloads {
  @JsonKey(name: "poster_path")
  String get posterPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiDownloadsCopyWith<ApiDownloads> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiDownloadsCopyWith<$Res> {
  factory $ApiDownloadsCopyWith(
          ApiDownloads value, $Res Function(ApiDownloads) then) =
      _$ApiDownloadsCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "poster_path") String posterPath});
}

/// @nodoc
class _$ApiDownloadsCopyWithImpl<$Res> implements $ApiDownloadsCopyWith<$Res> {
  _$ApiDownloadsCopyWithImpl(this._value, this._then);

  final ApiDownloads _value;
  // ignore: unused_field
  final $Res Function(ApiDownloads) _then;

  @override
  $Res call({
    Object? posterPath = freezed,
  }) {
    return _then(_value.copyWith(
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ApiDownloadsCopyWith<$Res>
    implements $ApiDownloadsCopyWith<$Res> {
  factory _$ApiDownloadsCopyWith(
          _ApiDownloads value, $Res Function(_ApiDownloads) then) =
      __$ApiDownloadsCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "poster_path") String posterPath});
}

/// @nodoc
class __$ApiDownloadsCopyWithImpl<$Res> extends _$ApiDownloadsCopyWithImpl<$Res>
    implements _$ApiDownloadsCopyWith<$Res> {
  __$ApiDownloadsCopyWithImpl(
      _ApiDownloads _value, $Res Function(_ApiDownloads) _then)
      : super(_value, (v) => _then(v as _ApiDownloads));

  @override
  _ApiDownloads get _value => super._value as _ApiDownloads;

  @override
  $Res call({
    Object? posterPath = freezed,
  }) {
    return _then(_ApiDownloads(
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiDownloads implements _ApiDownloads {
  const _$_ApiDownloads(
      {@JsonKey(name: "poster_path") required this.posterPath});

  factory _$_ApiDownloads.fromJson(Map<String, dynamic> json) =>
      _$$_ApiDownloadsFromJson(json);

  @override
  @JsonKey(name: "poster_path")
  final String posterPath;

  @override
  String toString() {
    return 'ApiDownloads(posterPath: $posterPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiDownloads &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(posterPath));

  @JsonKey(ignore: true)
  @override
  _$ApiDownloadsCopyWith<_ApiDownloads> get copyWith =>
      __$ApiDownloadsCopyWithImpl<_ApiDownloads>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiDownloadsToJson(this);
  }
}

abstract class _ApiDownloads implements ApiDownloads {
  const factory _ApiDownloads(
          {@JsonKey(name: "poster_path") required final String posterPath}) =
      _$_ApiDownloads;

  factory _ApiDownloads.fromJson(Map<String, dynamic> json) =
      _$_ApiDownloads.fromJson;

  @override
  @JsonKey(name: "poster_path")
  String get posterPath => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ApiDownloadsCopyWith<_ApiDownloads> get copyWith =>
      throw _privateConstructorUsedError;
}
