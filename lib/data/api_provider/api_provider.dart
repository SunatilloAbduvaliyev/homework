import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart'as http;

import '../model/country_model/country_model.dart';
import '../model/user_model/users_model.dart';
class ApiProvider {
  Future<List<CountryModel>> getAllCountry()async{
    try{
      http.Response response = await http.get(Uri.parse('https://restcountries.com/v3.1/all'));
      if(response.statusCode == 200){
        debugPrint("==================== ${response.statusCode}");
        return  (jsonDecode(response.body) as List?)?.map((e) => CountryModel.fromJson(e)).toList() ?? [];
      }
    }catch(error){
      debugPrint("Error = $error");
      rethrow;
    }
    return [];
  }
  Future<List<UserModel>> getAllUsers()async{
    try{
      http.Response response = await http.get(Uri.parse('https://fifth-exam.free.mockoapp.net/users'));
      if(response.statusCode == 200){
        debugPrint("==================== ${response.statusCode}");
        return (jsonDecode(response.body) as List?)?.map((e) => UserModel.fromJson(e)).toList() ?? [];
      }
    }catch(error){
      debugPrint("Error = $error");
      rethrow;
    }
    return [];
  }
}