import 'dart:convert';

import 'package:http/http.dart';
import 'package:netflix/api/common/model.dart';
import 'package:netflix/api/downloads/model.dart';

class HttpServices {
  Future<List<dynamic>> getTrending(String data) async {
    Response response = await get(Uri.parse(data));
    if (response.statusCode == 200) {
      final decodedJson = jsonDecode(response.body);

      List<dynamic> list = decodedJson['results']
          .map((item) => ApiDownloads.fromJson(item))
          .toList();
      return list;
    } else {
      throw 'Couldn\t get list';
    }
  }

  Future<List<dynamic>> getUpcoming(String data) async {
    Response res = await get(Uri.parse(data));
    if (res.statusCode == 200) {
      final decodedJson = jsonDecode(res.body);

      List<dynamic> list = decodedJson['results']
          .map((item) => ApiCommon.fromJson(item))
          .toList();
      return list;
    } else {
      throw 'Couldn\t get list';
    }
  }
}

Future<List<dynamic>> getPopular(String data) async {
  Response res = await get(Uri.parse(data));
  if (res.statusCode == 200) {
    final decodedJson = jsonDecode(res.body);

    List<dynamic> list =
        decodedJson['results'].map((item) => ApiCommon.fromJson(item)).toList();
    return list;
  } else {
    throw 'Couldn\t get list';
  }
}
