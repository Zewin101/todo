import 'package:flutter/material.dart';
import 'package:todo/modules/setting/setting.dart';
import 'package:todo/modules/tasks_list/tasks_list.dart';

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
      lastDate: selectedDate.add(const Duration(days: 365)),
    );
    if(chosenData==null)return;
    selectedDate=chosenData;
    notifyListeners();
  }
  //-------------------------------------------------------------------------
List<Widget>taps=[
  SettingTab(),
  TasksListTab()
];
}
