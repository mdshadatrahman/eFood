import 'package:http/http.dart' as http;

import '../model/food_model.dart';

class HttpService {
  static Future<FoodModel> fetchFood() async {
    var response =
        await http.get(Uri.parse("https://fakestoreapi.com/products"));
    if (response.statusCode == 200) {
      var data = response.body;
      return FoodModel.fromJson(data);
    } else {
      throw Exception();
    }
  }
}
