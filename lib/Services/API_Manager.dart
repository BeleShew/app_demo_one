import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:Flutter/keys/keys.dart';
import 'package:Flutter/Models/MakeUpModel.dart';

class Api_Manager {
  Future<List<MakeUpModel>> getMekups() async {
    var client = http.Client();
    var newsModel = <MakeUpModel>[];

    try {
      var response = await client.get(keys.url);
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);
        for (var items in jsonMap) {
          final mekups = new MakeUpModel(
            imageLink: items['image_link'],
            id: items['id'],
            name: items['name'],
            price: items['price'],
            description: items['description'],
            rating: items['rating'],
            productType: items['product_type'],
            productApiUrl: items['product_api_url'],
          );
          newsModel.add(mekups);
        }
      }
    } catch (ex) {
      //return newsModel;
      print(ex);
    }

    return newsModel;
  }
}
