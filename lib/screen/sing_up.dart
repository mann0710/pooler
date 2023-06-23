import 'package:flutter/material.dart';
import 'package:poolr/screen/bottomnav.dart';
import 'package:poolr/screen/login_page.dart';

class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 30, right: 30, top: 40, bottom: 20),
          child: Column(
            children: [
              TextFormField(
                // style: Border.all(width:1.0,color: Colors.black12),
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.person_rounded,
                  ),
                  label: Text(
                    'Full Name',
                    style: TextStyle(
                      color: Color(0xff5A5A5A),
                    ),
                  ),
                ),
              ),
              TextFormField(
                // style: Border.all(width:1.0,color: Colors.black12),

                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.mail_outlined,
                  ),
                  label: Text(
                    'Mail',
                    style: TextStyle(
                      color: Color(0xff5A5A5A),
                    ),
                  ),
                ),
              ),
              TextFormField(
                // style: Border.all(width:1.0,color: Colors.black12),
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.phone,
                  ),
                  label: Text(
                    'Phone Number',
                    style: TextStyle(
                      color: Color(0xff5A5A5A),
                    ),
                  ),
                ),
              ),
              TextFormField(
                // style: Border.all(width:1.0,color: Colors.black12),
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.location_on,
                  ),
                  label: Text(
                    'Address',
                    style: TextStyle(
                      color: Color(0xff5A5A5A),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    primary: const Color(0xff266578),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Bottombar()),
                    );
                  },
                  child: const Text('Crate Account'),
                ),
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have account?',
                    style: TextStyle(
                      color: Color(0xffADADAD),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      fontFamily: 'Raleway',

                    ),
                  ),
                  const SizedBox(width: 2),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (Context) => const LoginPage(),
                        ),
                      );
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Color(0xff266578),
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        fontFamily: 'Raleway',
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
}
