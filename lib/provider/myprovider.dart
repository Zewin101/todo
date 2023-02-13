import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  int changeIndex = 0;

  void changeTap(int index) {
    changeIndex = index;
    notifyListeners();
  }

//----------------------------------------------------------------------------
  DateTime selectedDate = DateTime.now();

  void showPicker(BuildContext context) async{
    DateTime? chosenData=await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: selectedDate,
      lastDate: selectedDate.add(Duration(days: 365)),
    );
    if(chosenData==null)return;
    selectedDate=chosenData;
    notifyListeners();
  }
}
