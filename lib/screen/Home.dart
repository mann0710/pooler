import 'package:flutter/material.dart';
import 'package:poolr/screen/notification.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> images = [
    'assets/images/img_2.png',
    'assets/images/img_3.png',
    'assets/images/img_4.png',
  ];

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
              fontWeight: FontWeight.w900 ,
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
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                child: ListView.builder(
                  itemCount: images.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(images[index]),
                            radius: 43,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 25),
              Container(
                child: Column(
                  children: [
                    Image.asset('assets/images/img_5.png'),
                  ],
                ),
              ),
              const SizedBox(height: 27),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: trackView(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 20),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 2, color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SvgPicture.asset(
                        'assets/icon/Group 67.svg',
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Diver Details',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600, fontFamily: 'Raleway',),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 22.5),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                        topRight: Radius.circular(5),
                      ),
                      boxShadow: [
                        // BoxShadow(blurRadius: 5.0, color: Colors.orange,blurStyle: ),
                        // BoxShadow(color: Colors.white, offset: Offset(5, 0)),
                        // BoxShadow(color: Colors.white, offset: Offset(0, 5)),
                        // BoxShadow(color: Colors.white, offset: Offset(5, 0)),
                        // BoxShadow(color: Colors.orange, offset: Offset(5, 5)),
                      ]),
                  width: 378,
                  height: 89,
                  child: ListTile(
                    leading: Stack(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Color(0xff00A3FF),
                          backgroundImage:
                              AssetImage("assets/images/img_3.png"),
                          radius: 35.0,
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: SvgPicture.asset(
                            'assets/icon/Vector.svg',
                            height: 21,
                            width: 17.5,
                          ),
                        ),
                      ],
                    ),
                    title: const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        'Chako Van',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Color(0xff252525),
                        ),
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 3),
                        const Text(
                          'Phone:+911234567890',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xffAFAFAF),
                          ),
                        ),
                        const SizedBox(height: 3),
                        const Text(
                          'Vehicle Number:GJ063422',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xffAFAFAF),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  child: const Text(
                    'Remove Drive',
                    style: TextStyle(
                        color: Color(0xffC4C4C4),
                        fontWeight: FontWeight.w700,
                        fontSize: 15),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      // color: Colors.white,height:42 ,width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 2, color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SvgPicture.asset(
                        'assets/icon/Group 69.svg',
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Fees Details',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16,right: 16),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5),
                                topRight: Radius.circular(5),
                              ),
                            ),
                            height: 107,
                            width: MediaQuery.of(context).size.width*0.4,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 13),
                                  child: SvgPicture.asset(
                                      'assets/icon/Nextpaymentdate.svg'),
                                ),
                                const SizedBox(height: 15),
                                const Text(
                                  'Next payment date',
                                  style: TextStyle(
                                    color: Color(0xffAFAFAF),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  '08 March 2023',
                                  style: TextStyle(
                                    color: Color(0xff626262),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.8,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            height: 107,
                            width: MediaQuery.of(context).size.width*0.4,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5),
                                topRight: Radius.circular(5),
                              ),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 13),
                                  child: SvgPicture.asset(
                                      'assets/icon/paymentamount.svg'),
                                ),
                                const SizedBox(height: 15),
                                const Text(
                                  'Payment Amount',
                                  style: TextStyle(
                                    color: Color(0xffAFAFAF),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  '2000 INR',
                                  style: TextStyle(
                                    color: Color(0xff626262),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.8,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      // color: Colors.white,height:42 ,width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 2, color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SvgPicture.asset(
                        'assets/icon/Notification.svg',
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Notification Center',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      width: 378,
                      height: 43,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                      Border.all(width: 2, color: Colors.white),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: SvgPicture.asset(
                                  'assets/icon/cancel.svg',
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                'This it',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff626262),),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      width: 378,
                      height: 43,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                      Border.all(width: 2, color: Colors.white),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: SvgPicture.asset(
                                  'assets/icon/note.svg',
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                'This it',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff626262)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  trackView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Container(
            child: const Text(
              'Candace Summer',
              style: TextStyle(
                color: Color(0xff252525),
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        const SizedBox(height: 1),
        Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Container(
            child: const Text(
              'Status: in the Vehicle',
              style: TextStyle(
                color: Color(0xffDF8600),
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        const SizedBox(height: 1),
        Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Container(
            child: const Text(
              'Last updated 12:30 pm(05/06/2023)  ',
              style: TextStyle(
                color: Color(0xff939393),
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Center(
          child: Container(
            child: Column(
              children: [
                Image.asset('assets/images/img_6.png', height: 100, width: 387),
              ],
            ),
          ),
        ), //map
        // SizedBox(height: 20),// image
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: ElevatedButton.icon(
            icon: const Icon(Icons.track_changes_rounded),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(50),
              primary: const Color(0xff266578),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Home(),
                ),
              );
            },
            label: const Text('Track'),
          ),
        ), //button
      ],
    );
  }
}
