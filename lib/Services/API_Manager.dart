import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:Flutter/keys/keys.dart';
import 'package:Flutter/Models/MakeUpModel.dart';

class Api_Manager {
  Future<MakeUpModel> getMekups() async {
    var client = http.Client();
    var newsModel = null;

    try {
      var response = await client.get(keys.url);
      if (response.statusCode == 200) {
        var jsonString = response.body;
        // var jsonMap = json.decode(jsonString);
        Map json = JsonDecoder().convert(jsonString);

        newsModel = MakeUpModel.fromJson(json);
      }
    } catch (ex) {
      //return newsModel;
      print(ex);
    }

    return newsModel;
  }
}
