import 'package:dio/dio.dart';

class NetworkCalls{
  //FixedURL/BASEurl
  static String baseURL ='http://192.168.1.7:3000';

  //Endpoints
  static String searchApi='${baseURL}/api/v2/search_data';

  static Dio dio = Dio();

 static Future<Response> getSearch() async {

    Response response = await dio.get(searchApi);
    return response;
  }
}