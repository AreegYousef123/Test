import 'package:flutter/cupertino.dart';
import 'package:untitled6/Model/NewsModel.dart';
import 'package:untitled6/Services/NewsServices.dart';

class NewsProvider extends ChangeNotifier
{
  NewsModel? model;
  Future<void>FechDta()async
  {
    model = await NewsService.GetData();
    notifyListeners();
  }
}