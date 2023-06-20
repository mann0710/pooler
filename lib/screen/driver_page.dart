import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:poolr/screen/notification.dart';

class DrivePage extends StatefulWidget {
  const DrivePage({Key? key}) : super(key: key);

  @override
  State<DrivePage> createState() => _DrivePageState();
}

class _DrivePageState extends State<DrivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Image.asset(
          'assets/images/img_1.png',
          height: 47,
          width: 40,
          scale: 2,
        ),
        title: RichText(
          text: const TextSpan(
            text: "Pool",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 32,
              color: Colors.white,
              fontFamily: 'Montserrat',
            ),
            children: [
              TextSpan(
                text: 'r',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 32,
                  color: Color(0xffFFA51E),
                  fontFamily: 'Montserrat',
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Color(0xff266578),
        toolbarHeight: 97,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotificationPage(),
                  ),
                );
              },
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 16,
                          )
                        ]),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Color(0xff00A3FF),
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("assets/images/img_3.png"),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          title: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'Leon Summer',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Color(0xff252525),
                                  fontFamily: 'Raleway'),
                            ),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 3),
                              Text(
                                'Plan: ₹1300/-month',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: Color(0xff89BF52),
                                  fontFamily: 'Raleway',
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                      'assets/icon/Child_Driverpage.svg'),
                                  SizedBox(width: 10),
                                  Text('Child Assigned: Leon Summers',
                                      style: TextStyle(
                                        fontFamily: 'Raleway',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff939393),
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset('assets/icon/phone.svg'),
                                  SizedBox(width: 10),
                                  Text("Driver's Phone Number: 1324394258",
                                      style: TextStyle(
                                        fontFamily: 'Raleway',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff939393),
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset('assets/icon/Vehiclenum.svg'),
                                  SizedBox(width: 10),
                                  Text("School Vehicle Number:Gj06jf1234",
                                      style: TextStyle(
                                        fontFamily: 'Raleway',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff939393),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/images/chat.svg'),
                              SizedBox(width: 10),
                              Text(
                                'Vehicle Fees',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          height: 57,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Color(0xff266578),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
