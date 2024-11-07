import 'package:flutter/foundation.dart';

class NewsModel {
  List<dynamic> dta;

  NewsModel({required this.dta});
  factory NewsModel.fromJson(Map<String, dynamic> json)
  {
    List<dynamic> data = json["articles"].map((i)
    {
      return {
        "Title": i["title"],
        "Image": i["urlToImage"],
        "Description": i["description"],
      };
    }).toList();

    return NewsModel(dta: data);
  }
}