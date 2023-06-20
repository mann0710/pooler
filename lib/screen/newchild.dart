import 'package:flutter/material.dart';
import 'package:poolr/screen/children_page.dart';

class AddNewChild extends StatefulWidget {
  const AddNewChild({Key? key}) : super(key: key);

  @override
  State<AddNewChild> createState() => _AddNewChildState();
}

class _AddNewChildState extends State<AddNewChild> {
  @override
  void initState() {}

  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController schooleController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Padding(
            padding: EdgeInsets.only(top: 25, left: 15),
            child: Icon(Icons.arrow_back_outlined, color: Colors.white),
          ), // SizedBox(height: 2),
        ),
        backgroundColor: const Color(0xff266578),
        // automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            height: 70,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Color(0xff266578),
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 30, left: 30),
              child: Text(
                'Add New Child',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Form(
                key: formkey,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 25, left: 28),
                          child: Text(
                            'Child Details',
                            style: TextStyle(
                              fontFamily: 'Raleway',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff313131),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 30, right: 30, top: 10),
                      child: Column(
                        children: [
                          TextFormField(
                            controller: nameController,

                            validator: (value) => value != null && value.isEmpty
                                ? "please enter your name"
                                : null,
                            onChanged: (value) {
                              Validatemode();
                            },
                            // style: Border.all(width:1.0,color: Colors.black12),
                            decoration: const InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffC4C4C4),
                                ),
                              ),
                              label: Text(
                                'Full Name',
                                style: TextStyle(
                                  color: Color(0xffC4C4C4),
                                ),
                              ),
                            ),
                          ),
                          TextFormField(maxLength: 10,
                            keyboardType: TextInputType.number,
                            controller: ageController,
                            validator: (value) {
                              if (value?.length != 10) {
                                return 'Mobile Number must be of 10 digit';
                              } else
                                return null;
                            },onChanged: (value){
                            Validatemode();
                          },
                            // onChanged: (value) {
                            //   Validatemode();
                            // },
                            // style: Border.all(width:1.0,color: Colors.black12),
                            decoration: const InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffC4C4C4),
                                ),
                              ),
                              label: Text(
                                'Age',
                                style: TextStyle(
                                  color: Color(0xffC4C4C4),
                                ),
                              ),
                            ),
                          ),
                          TextFormField(
                            controller: genderController,
                            validator: (value) => value != null && value.isEmpty
                                ? "please enter your gender"
                                : null,
                            onChanged: (value) {
                              Validatemode();
                            },
                            // style: Border.all(width:1.0,color: Colors.black12),
                            decoration: const InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffC4C4C4),
                                ),
                              ),
                              label: Text(
                                'Gender',
                                style: TextStyle(
                                  color: Color(0xffC4C4C4),
                                ),
                              ),
                            ),
                          ),
                          TextFormField(
                            controller: addressController,
                            validator: (value) => value != null && value.isEmpty
                                ? "please enter your address"
                                : null,
                            onChanged: (value) {
                              Validatemode();
                            },
                            // style: Border.all(width:1.0,color: Colors.black12),
                            decoration: const InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffC4C4C4),
                                ),
                              ),
                              label: Text(
                                'Address',
                                style: TextStyle(
                                  color: Color(0xffC4C4C4),
                                ),
                              ),
                            ),
                          ),
                          TextFormField(
                            controller: schooleController,
                            validator: (value) => value != null && value.isEmpty
                                ? "please enter your school name"
                                : null,
                            onChanged: (value) {
                              Validatemode();
                            },
                            // style: Border.all(width:1.0,color: Colors.black12),
                            decoration: const InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffC4C4C4),
                                ),
                              ),
                              label: Text(
                                'School',
                                style: TextStyle(
                                  color: Color(0xffC4C4C4),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 30, left: 28),
                          child: Text(
                            'Child Photo',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Raleway',
                              fontSize: 20,
                              color: Color(0xff313131),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: ListTile(
                        leading: Image.asset('assets/images/profile.png',
                            height: 53, width: 53, scale: 10),
                        title: const Text(
                          'Upload your child’s photo',
                          style: TextStyle(
                              fontFamily: 'Raleway',
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        subtitle: const Text(
                            "To upload a child's picture, tap on the 'image icon' and select the desired photo from your device."),
                      ),
                    ),
                    const SizedBox(height: 47),
                    InkWell(
                      onTap: () {
                        print('object');
                        if (formkey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChildrenPage(
                              ),
                            ),
                          );
                        }
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xff266578),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        height: 50,
                        width: 364,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.verified, color: Colors.white),
                            SizedBox(width: 5),
                            Text(
                              'Add Child',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void Validatemode() {
    var form = formkey.currentState;
    if (form!.validate()) {
      print('form is valid');
    } else {
      print('form invalid');
    }
  }
}
