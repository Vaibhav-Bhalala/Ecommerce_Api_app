import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../Model/api_model.dart';

class ApiHelper {
  ApiHelper._();

  static final ApiHelper apiHelper = ApiHelper._();

  MultiResponceApi() async {
    String Api = "https://dummyjson.com/products";
    http.Response response = await http.get(Uri.parse(Api));

    if (response.statusCode == 200) {
      Map decodedData = jsonDecode(response.body);
      List list1 = decodedData['products'];
      List<ApiModel> allData =
          list1.map((e) => ApiModel.fromJson(data: e)).toList();
      return allData;
    } else {
      return null;
    }
  }
}
