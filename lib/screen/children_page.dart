import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:poolr/screen/newchild.dart';
import 'package:poolr/screen/notification.dart';

class ChildrenPage extends StatefulWidget {
  const ChildrenPage({Key? key}) : super(key: key);

  @override
  State<ChildrenPage> createState() => _ChildrenPageState();
}

class _ChildrenPageState extends State<ChildrenPage> {
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
        backgroundColor: const Color(0xff266578),
        toolbarHeight: 97,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: IconButton(
              icon: const Icon(
                Icons.notifications,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NotificationPage(),
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
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [
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
                            decoration: const BoxDecoration(
                              color: Color(0xff00A3FF),
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("assets/images/img_3.png"),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          title: const Padding(
                            padding: EdgeInsets.only(top: 10),
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
                            children: const [
                              SizedBox(height: 3),
                              Text(
                                'Phone:+911234567890',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color(0xff939393),
                                  fontFamily: 'Raleway',
                                ),
                              ),
                              SizedBox(height: 3),
                              Text(
                                'Vehicle Number:GJ063422',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color(0xff939393),
                                  fontFamily: 'Raleway',
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                      'assets/icon/Driverforchildrenpage icon.svg'),
                                  const SizedBox(width: 10),
                                  const Text('Driver: Arjun Gobiad',
                                      style: TextStyle(
                                        fontFamily: 'Raleway',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff939393),
                                      )),
                                ],
                              ),
                              SizedBox(height:14 ),
                              Row(
                                children: [
                                  SvgPicture.asset('assets/icon/phone.svg'),
                                  const SizedBox(width: 10),
                                  const Text("Driver's Phone Number: 1324394258",
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
                                  SvgPicture.asset(
                                      'assets/icon/timeingsChildpage.svg'),
                                  const SizedBox(width: 10),
                                  const Text("School Timings: 70:30 pa mto 12:30 pa",maxLines: 3,
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
                                  const SizedBox(width: 10),
                                  const Text("School Vehicle Number:Gj06jf1234",
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
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 57,
                                width: 134,
                                decoration: const BoxDecoration(
                                  color: Color(0xff266578),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(5)),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Vehicle Fees',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 1),
                            Expanded(
                              child: Container(
                                height: 57,
                                width: 134,
                                decoration: const BoxDecoration(
                                  color: Color(0xff266578),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Driver Datails',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 1),
                            Expanded(
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 57,
                                  width: 134,
                                  decoration: const BoxDecoration(
                                    color: Color(0xff266578),
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(5)),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Locate',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddNewChild(),
            ),
          );
        },
        backgroundColor: const Color(0xff266578),
        child: const Icon(Icons.add),
      ),
    );
  }
}
