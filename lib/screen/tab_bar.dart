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
          backgroundColor: const Color(0xff266578),
          bottom: TabBar(
            padding: EdgeInsets.only(right: 160),
            isScrollable: true,
            unselectedLabelColor: Colors.grey,
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
          title: RichText(
            text: const TextSpan(
              text: 'Poolr',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              children: [
                TextSpan(
                  text: '  ' + 'parnet',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
                ),
              ],
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
