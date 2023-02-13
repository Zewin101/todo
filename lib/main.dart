import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/modules/setting/setting.dart';
import 'package:todo/modules/tasks_list/tasks_list.dart';
import 'package:todo/provider/myprovider.dart';
import 'package:todo/styles/myTheme.dart';
import 'layout/home_layout/home_layout.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => MyProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeLayout.routName,
      routes: {
        HomeLayout.routName: (context) => HomeLayout(),
        TasksListTab.routName: (context) => TasksListTab(),
        SettingTab.routName: (context) => SettingTab(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
    );
  }
}
