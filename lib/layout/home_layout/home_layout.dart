import 'package:flutter/material.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);
  static const String routName = "HomeLayout";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: const StadiumBorder(
          side: BorderSide(
            color: Colors.white,
            width: 3
          )
        ),
        onPressed: () {},
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
                label: 'List',backgroundColor: Colors.green),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/icon_settings.png')),
                label: 'Setting',backgroundColor: Colors.green),
          ],
          onTap: (index) {},
          iconSize: 35,
        ),
      ),
    );
  }
}
