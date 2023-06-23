import 'package:flutter/material.dart';
import 'package:poolr/screen/otp_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final fromkey = GlobalKey<FormState>();
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        return false;
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: fromkey,
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0, top: 30.0, right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Welcome back!',
                    style: TextStyle(
                        fontSize: 24,
                      fontFamily: 'Raleway',
                      color: Color(0xff5A5A5A)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Enter your phone number to recieve a verification code to login',
                  style: const TextStyle(
                      fontSize: 16,
                      // fontWeight: FontWeight.normal,
                      color: Color(0xff5A5A5A),
                      fontFamily: 'Raleway'),
                ),
                  const SizedBox(height: 50),
                  TextFormField(
                    controller: numberController,
                    validator: (value) {
                      if (value?.length != 10) {
                        return 'Mobile Number must be of 10 digit';
                      } else
                        return null;
                    },onChanged: (value){
                    Validatemode();
                  },
                    maxLength: 10,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.phone,
                      ),
                      label: Text('Phone number'),
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
                        if (fromkey.currentState!.validate()) {
                          // print("object");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OtpPage(
                                number: int.parse(numberController.text),
                              ),
                            ),
                          );
                        }
                      },
                      child: const Text('Get Code'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
  void Validatemode() {
    var form = fromkey.currentState;
    if (form!.validate()) {
      print('form is valid');
    } else {
      print('form invalid');
    }
  }
}
