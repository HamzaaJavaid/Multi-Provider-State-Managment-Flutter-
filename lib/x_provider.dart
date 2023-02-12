


import 'package:flutter/cupertino.dart';

class value_provider with ChangeNotifier{

  double value = 0.5 ;

  double get get_double=> value;

  void set_double(double val){
    value = val ;
    notifyListeners();
  }




}