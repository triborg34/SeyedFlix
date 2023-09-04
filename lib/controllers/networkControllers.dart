// ignore_for_file: unused_local_variable

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:seyedbox/models/movie_model.dart';

class NetworkApi extends GetxController{
  RxList<FakeMovieApi> movielist=<FakeMovieApi>[].obs;

  
  Future<RxList<FakeMovieApi>> getData() async{
    Uri url=Uri.parse('https://my-json-server.typicode.com/horizon-code-academy/fake-movies-api/movies');
    var response= await http.get(url).then((value){
      if(value.statusCode==200){
        var jsonDecode=convert.jsonDecode(value.body);
        for(var json in jsonDecode){
          movielist.add(FakeMovieApi.fromJson(json));


        }
      }
      else{
        print(value.statusCode);

      }
      print(movielist.first.poster);
   
      
    });
     return movielist;
  }
  @override
  void onInit() {
   getData();
    super.onInit();
  }

}