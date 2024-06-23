import 'package:flutter/cupertino.dart';

class provider extends ChangeNotifier{

int _counter = 0;

void incrementCount(){
  _counter++;
  notifyListeners();
}

int getvalue(){
  return _counter;
}

}