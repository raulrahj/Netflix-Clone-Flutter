import 'package:netflix/api/api.dart';
import 'package:netflix/core/constants/strings.dart';

class ApiEndPoints {
  static const trending = '$dBaseUrl/trending/all/day?api_key=$apiKey';
  static const popular =
      '$dBaseUrl/movie/popular?api_key=$apiKey&language=en-US&page=1';
  static const topTen =
      '$dBaseUrl/movie/top_rated?api_key=$apiKey&language=en-US&page=1';
  static const upcoming =
      '$dBaseUrl/movie/upcoming?api_key=$apiKey&language=en-US&page=1';
  static const img = "https://image.tmdb.org/t/p/w500/";
  static  const search = '$dBaseUrl/search/movie?api_key=$apiKey';
}
