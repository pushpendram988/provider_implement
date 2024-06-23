import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class ListProvider extends ChangeNotifier{

//Data
  List<Map<String, dynamic>> _mData = [];

  ///addDAta

  void addData(Map<String , dynamic> newData){
    _mData.add(newData);
    notifyListeners();
  }

  List<Map<String , dynamic>> getData() => _mData;

  void deleteData (){

  }

}