// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiCommon _$$_ApiCommonFromJson(Map<String, dynamic> json) => _$_ApiCommon(
      image: json['poster_path'] as String?,
      backImage: json['backdrop_path'] as String?,
      title: json['original_title'] as String?,
      type: json['media_type'] as String?,
      overView: json['overview'] as String?,
    );

Map<String, dynamic> _$$_ApiCommonToJson(_$_ApiCommon instance) =>
    <String, dynamic>{
      'poster_path': instance.image,
      'backdrop_path': instance.backImage,
      'original_title': instance.title,
      'media_type': instance.type,
      'overview': instance.overView,
    };
