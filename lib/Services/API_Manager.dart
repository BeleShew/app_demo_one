import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:Flutter/keys/keys.dart';
import 'package:Flutter/Models/MakeUpModel.dart';

class Api_Manager {
  Future<MakeUpModel> getMekups() async {
    var client = http.Client();
    var newsModel;

    try {
      var response = await client.get(keys.url);
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        newsModel = MakeUpModel.fromJson(jsonMap);
      }
    } catch (Exception) {
      return newsModel;
    }

    return newsModel;
  }
}
