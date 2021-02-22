import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../shared/components/component.dart';
import '../forget_password/forget_pass_screen.dart';
import '../normal_user_home/normal_user_home_screen.dart';
import 'components/screen_top.dart';
import '../signup/signup_screen.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _phone;
  String _password;
  bool height = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: SingleChildScrollView(
          child: GestureDetector(
            onTap: (){
              FocusScope.of(context).requestFocus(new FocusNode());
            },
            child: Column(
              children: [
                ScreenTop(),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 18, right: 18, top: 20, bottom: 20),
                        child: Container(
                          // height:  height ? 385 : 335,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFFF8F8F8),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsets.only(left: 30, right: 30, top: 20),
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
                                  onSave: (value) {
                                    setState(() {
                                      _phone = value;
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
                                  height: 20,
                                ),
                                inputField(
                                  hint: 'كلمة المرور',
                                  textInputType: TextInputType.text,
                                  secure: true,
                                  icon: true,
                                  prefix: IconButton(
                                    icon: Icon(
                                      Icons.lock,
                                      color: Colors.grey,
                                      size: 15,
                                    ),
                                    onPressed: null,
                                  ),
                                  validate: (value) {
                                    if (value.toString().isEmpty) {
                                      return 'ادخل الرقم السرى';
                                    } else if (value.toString().length < 8) {
                                      return 'short pass';
                                    }
                                    return null;
                                  },
                                  onSave: (newValue) {
                                    setState(() {
                                      _password = newValue;
                                    });
                                  },
                                  onChanged: (value) {
                                    if (value.toString().isNotEmpty) {
                                      return '';
                                    } else if (value.toString().length >= 8) {
                                      return 'ok';
                                    }
                                    _password = value;
                                  },
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                defaultButton(
                                  text: 'تسجيل الدخول',
                                  function: () {
                                    FocusScope.of(context).unfocus();
                                    if (!_formKey.currentState.validate()) {
                                      print('unValidated');
                                      // setState(() {
                                      //   height = true;
                                      // });
                                      return;
                                    } else {
                                      print(' validated');
                                      _formKey.currentState.save();
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => HomeScreen(),
                                        ),
                                      );
                                    }
                                  },
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (_) => ForgetPassScreen(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'هل نسيت كلمة المرور ؟',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFFBFBFBF),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        print('22');
                                      },
                                      child: SocialLogin(
                                        text: 'تسجيل',
                                        color: Color(0xFF1C9CEA),
                                        icons: Icon(
                                          Icons.lock,
                                          size: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        print('33');
                                      },
                                      child: SocialLogin(
                                        text: 'تسجيل',
                                        color: Color(0xFFD64A37),
                                        icons: Icon(
                                          Icons.lock,
                                          size: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => SignUpScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'ليس لديك حساب؟ حساب جديد',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFFBFBFBF),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
