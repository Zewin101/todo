import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/provider/myprovider.dart';

import '../../styles/colors.dart';
import 'addTaskBottomSheet.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);
  static const String routName = "HomeLayout";

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Scaffold(
      extendBody: true,
      appBar: AppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: const StadiumBorder(
            side: BorderSide(color: Colors.white, width: 3)),
        onPressed: () {
          openBottomSheet(context);
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8,
        shape: const CircularNotchedRectangle(),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/icon_list.png')),
                label: 'List'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/icon_settings.png')),
                label: 'Setting'),
          ],
          onTap: (index) {
            provider.changeTap(index);
          },
          currentIndex: provider.changeIndex,
          iconSize: 35,
        ),
      ),
      body:provider.taps[provider.changeIndex] ,
    );
  }

  void openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return AddTasks();
      },
    );
  }
}
