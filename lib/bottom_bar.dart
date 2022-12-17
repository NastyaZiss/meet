import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meet/const/global_color.dart';
import 'package:meet/screen/creat_screen.dart';
import 'package:meet/screen/home_screen.dart';
import 'package:meet/screen/my_meet.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex=0;
  static final List<Widget>_widgetOptions =<Widget>[
    const MyMeetScreen(),
    const HomeScreen(),
    // const SearchScreen(),
    const CreatScreen(),
    // const Text("Profile")
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        type:  BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xFF526480),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.favorite, color: AppColors.blue,),
              activeIcon: Icon(Icons.favorite_border_outlined, color: AppColors.blue,),
              label:"Мои встречи"),
           // BottomNavigationBarItem(icon: Icon(CupertinoIcons.search),
           //     activeIcon: Icon(Icons.check),
           //     label:"Поиск"),
          // доступны только для орг
          BottomNavigationBarItem(icon: Icon(Icons.home, color: AppColors.blue,),
              activeIcon: Icon(Icons.home_outlined, color: AppColors.blue,),
              label:"Home"),
          BottomNavigationBarItem(icon: Icon(Icons.add_box, color: AppColors.blue,),
              activeIcon: Icon(Icons.add_box_outlined, color: AppColors.blue,),
              label:"Создание мероприятия"),

        ],
      ),
    );
  }
}
