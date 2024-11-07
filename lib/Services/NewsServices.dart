import 'package:dio/dio.dart';
import 'package:untitled6/Model/NewsModel.dart';

class NewsService
{
  static Dio dio = Dio();
  static Future<NewsModel> GetData()async
  {
    try
        {
          const url = "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=7c64a4b2debe40168c74926def260cdf";
          Response response = await dio.get(url);
          if(response.statusCode == 200)
          {
            return NewsModel.fromJson(response.data);
          }
          else
          {
            throw Exception("Not Found");
          }
        }
        catch(e)
    {
      throw Exception("Error${e}");
    }
  }
}