import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/const.dart';
import 'package:news_app/model/news_model.dart';

class CustomeHttp {
  Future<List<Articles>> fechAllData({
    required int page,
    required String sortBy,
  }) async {
    List<Articles> allData = [];
    Articles articles;
    var responce = await http.get(Uri.parse(
        "$baseUrl&q=bitcoin&pageSize=10&page=$page&sortBy=$sortBy&apiKey=$token"));
    print(" Value is here ${responce.body}");

    var data = jsonDecode(responce.body);
    for (var i in data["articles"]) {
      articles = Articles.fromJson(i);
      allData.add(articles);
    }
    return allData;
  }

  Future<List<Articles>> fechSearchData({
    required String query,
  }) async {
    print("this is api call");
    List<Articles> allData = [];
    Articles articles;
    var responce = await http.get(Uri.parse(
        "https://newsapi.org/v2/everything?q=$query&apiKey=f1f697fbcb884fea97366c2bf58fc673"));
    print("Printed value ${responce.body}");

    var data = jsonDecode(responce.body);
    for (var i in data!["articles"]) {
      articles = Articles.fromJson(i);
      allData.add(articles);
    }
    return allData;
  }
}
