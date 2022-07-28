import 'dart:convert';

import 'package:http/http.dart';
//mport '../model/article.dart';


class ApiService{
  final endpoint = "";
  Future<List<udit-app>> getArticle() async{
    Response response = await get(Uri.parse(endpoint));

    if(response.statusCode == 200){
      Map<String,dynamic> json = jsonDecode(response.body);
      List<dynamic> body = json['articles'];
      List<Article> articles = body.map((dynamic item) => Article.fromJson(item)).toList();
      return articles;
    }else{
      throw('Data has Error');
    }
  }
}
