import 'package:flutter/material.dart';
import 'package:muharek_app/shared/components/component.dart';
import 'package:muharek_app/views/join_as_checking_rep/join_as_checking_rep_screen.dart';


class ActivationCodeScreen2 extends StatefulWidget {
  @override
  _ActivationCodeScreen2State createState() => _ActivationCodeScreen2State();
}

class _ActivationCodeScreen2State extends State<ActivationCodeScreen2> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _phone;
  String _num = '0987654321';
  bool normalUser = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              ImageAndTitle(
                title: 'كود التفعيل',
                image: 'assets/images/image5.png',
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'يرجى ادخال الكود المكون من أربعة \n ارقام المرسل على الرقم ',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Color(0xFFA2A2A2),
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '$_num',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Color(0xFF2777B2),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30),
                child: Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFF8F8F8),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding:
                    const EdgeInsets.only(left: 30, right: 30, top: 30),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          inputField(
                            validate: (value) {
                              if (value.toString().isEmpty) {
                                return 'ادخل كود التفعيل';
                              } else {
                                return null;
                              }
                            },
                            onSave: (value) {
                              setState(() {
                                _phone = value;
                              });
                            },
                            secure: false,
                            textInputType: TextInputType.number,
                            icon: true,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          buildTimer(),
                          SizedBox(
                            height: 30,
                          ),
                          InkWell(
                            onTap: () {
                              //
                            },
                            child: Text(
                              'إعادة ارسال الكود',
                              style: TextStyle(
                                color: Color(0xFF2777B2),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          defaultButton(
                            color: Color(0xFF3192D9),
                            text: 'تفعيل',
                            function: () {
                              if (_formKey.currentState.validate()) {
                                print('validated');
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => CheckingRepScreen(),
                                    ),
                                  );
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

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TweenAnimationBuilder(
          tween: Tween(begin: 15.0, end: 0.0),
          duration: Duration(seconds: 30),
          builder: (_, value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}