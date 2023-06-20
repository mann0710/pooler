import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:poolr/screen/bottomnav.dart';

class OtpPage extends StatefulWidget {
  int? number;
  OtpPage({Key? key, this.number}) : super(key: key);
  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final fromkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_outlined, color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0, top: 30.0, right: 25),
        child: Form(
          key: fromkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Verification code',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff5A5A5A)),
              ),
              const SizedBox(
                height: 13,
              ),
              Text(
                'Enter the verification code that has been sent to the number ${widget.number} ',
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff5A5A5A)),
              ),
              const SizedBox(height: 30),
              Center(
                child: Pinput(
                   length: 4,
             validator: (value) => value != null && value.isEmpty
              ? "Otp Is Reqrired"
                : null,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
              ),
              const SizedBox(height: 74 ),
              Padding(
                padding:  const EdgeInsets.only(
                  top: 20,
                ),
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.verified),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    primary: const Color(0xff266578),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36),
                    ),
                  ),
                  onPressed: () {
                    if (fromkey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Bottombar(),
                        ),
                      );
                    }
                  },
                  label:const Text('Verify Code') ,
                ),
              ),
              const SizedBox(height: 32),
              Center(
                child: RichText(
                  strutStyle: const StrutStyle(height: 0.7),
                  text: const TextSpan(
                    text: "Don't receive the code?",
                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16,color: Color(0xffADADAD),),
                    children: [
                      TextSpan(
                        text: '  ' + 'Resend Code',
                        style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16,color: Color(0xff266578),),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
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
