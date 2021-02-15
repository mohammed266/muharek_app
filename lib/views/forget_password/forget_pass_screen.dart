import 'package:flutter/material.dart';
import '../../shared/components/component.dart';

class ForgetPassScreen extends StatefulWidget {
  @override
  _ForgetPassScreenState createState() => _ForgetPassScreenState();
}

class _ForgetPassScreenState extends State<ForgetPassScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _phone;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ImageAndTitle(
                title: 'هل نسيت كلمة السر',
                image: 'assets/images/image4.png',
              ),
              SizedBox(
                height: 30,
              ),
              Text('يرجى ادخال رقم الهاتف المسجل \n وستصلك رسالة بها كود مكون \n من أربعة ارقام',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Color(0xFFA2A2A2),
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.all(30),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFF8F8F8),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          inputField(
                            validate: (value) {
                              if (value.toString().isEmpty) {
                                return 'ادخل رقم الهاتف';
                              } else {
                                return null;
                              }
                            },
                            hint: 'رقم الهاتف',
                            onSave: (newValue) {
                              setState(() {
                                _phone = newValue;
                              });
                            },
                            secure: false,
                            textInputType: TextInputType.number,
                            icon: true,
                            prefix: Container(
                              width: size.width * 0.1,
                              child: Row(
                                children: [
                                  Container(
                                    height: 25,
                                    width: 2,
                                    color: Colors.grey[300],
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    '966+',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.grey[300],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          defaultButton(
                            color: Color(0xFF1C608D),
                            text: 'ارسال',
                            function: () {
                              if (_formKey.currentState.validate()) {
                                 print('validated');
                                return;
                              } else {
                                print('not validated');
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


