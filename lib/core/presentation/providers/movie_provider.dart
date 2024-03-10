  import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_12/core/consts/app_consts.dart';
import 'package:flutter_application_12/core/network/dio_settings.dart';
import 'package:flutter_application_12/data/models/movie_model.dart';

class MovieProvider extends ChangeNotifier{
final Dio _dio = DioSettings().dio;

    MovieModel? data;

  Future<void> getMovie({required String title}) async{
    

 try {
   final Response response =  await _dio.get('http://www.omdbapi.com/',
 queryParameters: {
  "apikey": AppConsts.ApiKey,
  "t": title,
  "plot": 'full'
 
  
 }

 
 );
   data = MovieModel.fromJson(
      response.data
    );
 } catch (e) {
   print(e.toString());
 }
 notifyListeners();
  }

  

  }