import 'package:flutter/material.dart';
import 'package:poolr/screen/login_page.dart';
import 'package:poolr/screen/sing_up.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  int initialIndex = 1;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: initialIndex,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Color(0xff266578),
          bottom: TabBar(
            padding: EdgeInsets.only(right: 210),
            isScrollable: true,
            unselectedLabelColor: Colors.white54,
            indicatorColor: Colors.white,
            tabs: <Tab>[
              Tab(
                text: "Login",
              ),
              Tab(
                text: "Singup",
              ),
            ],
          ),
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.only(left: 10, top: 20),
            child: RichText(
              text: const TextSpan(
                text: 'Poolr',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 32,
                    fontFamily: 'Raleway'),
                children: [
                  TextSpan(
                    text: ' ' + 'Parent',
                    style: TextStyle(fontSize: 32, fontFamily: 'Raleway'),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            LoginPage(),
            SingUp(),
          ],
        ),
      ),
    );
  }
}
