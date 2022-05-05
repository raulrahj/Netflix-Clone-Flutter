import 'package:freezed_annotation/freezed_annotation.dart';
part 'model.freezed.dart';
part 'model.g.dart';

@freezed
class ApiDownloads with _$ApiDownloads {
  const factory ApiDownloads(
          {@JsonKey(name: "poster_path") required String posterPath}) =
      _ApiDownloads;

  factory ApiDownloads.fromJson(Map<String, dynamic> json) =>
      _$ApiDownloadsFromJson(json);
}
