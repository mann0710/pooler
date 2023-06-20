import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:poolr/screen/login_page.dart';
import 'package:poolr/screen/notification.dart';
import 'package:poolr/screen/tab_bar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 30, top: 76, bottom: 15),
          child: Text(
            'Profile',
            style: TextStyle(
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w600,
                fontSize: 24),
          ),
        ),
        backgroundColor: Color(0xff266578),
        toolbarHeight: 127,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30, left: 25, right: 25),
            height: 50,
            child: ListTile(
              leading: SvgPicture.asset('assets/icon/Profile-Profilepage.svg'),
              title: Text('Full Name',),
              subtitle: Text('jonme luii'),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 25, right: 25),
            height: 50,
            child: ListTile(
              leading: SvgPicture.asset('assets/icon/Profile-phone-Icons.svg'),
              title: Text('Phone Number'),
              subtitle: Text('+91 123456789'),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 25, right: 25),
            height: 50,
            child: ListTile(
              leading: SvgPicture.asset('assets/icon/Profile-mail-Icons.svg'),
              title: Text('Email'),
              subtitle: Text('mann71099@gmail.com'),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 25, right: 25),
            height: 50,
            child: ListTile(
              leading: SvgPicture.asset('assets/icon/Profile-location-Icons.svg'),
              title: Text('Address'),
              subtitle: Text('118, 1st Floor, 135/139, Yogeshwar Society...'),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 25, right: 25),
            height: 50,
            child: ListTile(
              leading: SvgPicture.asset('assets/icon/Profile-Logout-Icons.svg'),
              title: Text('Logout'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => TabBarPage(),
                ),);
              },
            ),
          ),
        ],
      ),
    );
  }
}
