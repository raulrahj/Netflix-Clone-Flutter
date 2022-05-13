
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/api/api_end_points.dart';
import 'package:netflix/domain/search/search_resp/search_resp.dart';
import 'package:netflix/domain/search/search_service.dart';
import '../../domain/core/failures/main_failure.dart';

@LazySingleton(as: SearchService)
class SearchImp implements SearchService {
  @override
  Future<Either<MainFailure, SearchResp>> searchMovies(
      {required String movieQuery}) async {
    try {
      final response = await Dio(BaseOptions())
          .get(ApiEndPoints.search, queryParameters: {'query': movieQuery});

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = SearchResp.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } on DioError catch (e) {
      return const Left(MainFailure.clientFailure());
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
