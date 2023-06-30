import 'package:flutter/cupertino.dart';

import '../info.dart';

class SearchingController extends ChangeNotifier{

  List searchedProduct =[];
  bool searching = false;
  bool isSearch = false;

  void searchFunc(String value){
    List<Map<String, String>> result = [];
    if(value.isEmpty) {
      result = info;
      isSearch = false;
      notifyListeners();
    }
    else{
      result = info.where((element) => element['name']!.toLowerCase().contains(value.toString().toLowerCase())).toList();
      isSearch = true;
      notifyListeners();
    }
    searchedProduct = result;
    notifyListeners();
  }


}