import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:toonflix/models/webtoon_model.dart';

class ApiServices {
  static const String baseUrl =
      "https://webtoon-crawler.nomadcoders.workers.dev";
  static const String today = "today";

  // static : 해당 함수를 호출하는곳마다 ApiServices 객체를 생성하지 않고 사용하기 위함
  // static을 사용하지 않으면 Apiservice().getTodaysToons()로 클래스 객체를 만든 후 사용하여야함
  static Future<List<WebtoonModel>> getTodaysToons() async {
    // async 함수일때는 void 또는 Future 객체로 리턴
    List<WebtoonModel> webtoonInstances = [];
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        // json 응답을 클래스 객체로 변환하여 리스트 추가
        webtoonInstances.add(WebtoonModel.fromJson(webtoon));
      }
      return webtoonInstances;
    }
    throw Error();
  }
}
