import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:poolr/screen/Home.dart';
import 'package:poolr/screen/children_page.dart';
import 'package:poolr/screen/driver_page.dart';
import 'package:poolr/screen/profile_page.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({Key? key}) : super(key: key);

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  Color? img1;
  Color? img2;
  Color? img3;
  Color? img4;
  onTapPageChange(index) {
    setState(
      () {
        _selectedIndex = index;
        if (_selectedIndex == 0) {
          img1 = Color(0xff266578);
          img2 = null;
          img3 = null;
          img4 = null;
        } else if (_selectedIndex == 1) {
          img2 = Color(0xff266578);
          img1 = null;
          img3 = null;
          img4 = null;
        } else if (_selectedIndex == 2) {
          img3 = Color(0xff266578);
          img2 = null;
          img1 = null;
          img4 = null;
        } else {
          img4 = Color(0xff266578);
          img2 = null;
          img3 = null;
          img1 = null;
        }
      },
    );
  }

  int _selectedIndex = 0;
  List<Widget> _widgetOptions = const [
    Home(),
    ChildrenPage(),
    DrivePage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            backgroundColor: Color(0xFFffffff),
            selectedIconTheme: IconThemeData(color: Color(0xff266578)),
            selectedItemColor: Color(0xff266578).withOpacity(.60),
            selectedFontSize: 14,
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                icon:
                    // Icon(Icons.home),
                    SvgPicture.asset('assets/icon/home.svg', color: img1),
              ),
              BottomNavigationBarItem(
                label: 'Children',
                icon: SvgPicture.asset('assets/icon/child.svg', color: img2),
              ),
              BottomNavigationBarItem(
                label: 'Driver',
                icon: SvgPicture.asset('assets/icon/driver.svg', color: img3),
              ),
              BottomNavigationBarItem(
                label: 'Profile',
                icon: SvgPicture.asset('assets/icon/profile.svg', color: img4),
              ),
            ],
            onTap: onTapPageChange),
        body: Center(
          child: _widgetOptions.elementAt(
            _selectedIndex,
          ),
        ),
      ),
    );
  }
}
//
