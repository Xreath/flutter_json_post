import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:version1/core/components/enum/service_path_enum.dart';
import 'package:version1/model/postModel.dart';

class PlaceHolderService {
  Future<List<postModel>?> fetchPostIem() async {
    final url = Uri.parse(
        '${ServicePathEnum.BASE_URL.rawValue}${ServicePathEnum.POST.rawValue}');
    final response = await http.get(url);

    switch (response.statusCode) {
      case HttpStatus.ok:
        final responseBody = jsonDecode(response.body);
        if (responseBody is List) {
          return responseBody.map((e) => postModel.fromJson(e)).toList();
        }
        return [];
      default:
        return null;
    }
  }
}
