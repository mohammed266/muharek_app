import 'package:flutter/material.dart';
import '../../shared/components/component.dart';
import '../activation_code/activation_code_screen.dart';
import '../activation_code/activation_code_screen2.dart';
import '../login/login_screen.dart';
import 'package:easy_localization/easy_localization.dart';


class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  List<String> city = ['A', 'B', 'C', 'D'];
  String _newCity;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String phone;
  String password;
  String conformPassword;
  bool normalUser = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: GestureDetector(
            onTap: (){
              FocusScope.of(context).requestFocus(new FocusNode());
            },
            child: Column(
              children: [
              ImageAndTitle(
              title: "${'singUp title'.tr().toString()}",
              image: EasyLocalization.of(context).locale == Locale('en', 'US')
                  ?'assets/images/car1.png'
                  : 'assets/images/car3.png',
            ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              normalUser = true;
                            });
                          },
                          child: Container(
                            height: 120,
                            decoration: BoxDecoration(
                              // color: normalUser
                              //     ? Color(0xFF1C608D)
                              //     : Color(0xFFF8F8F8),
                              gradient:  normalUser
                                  ? LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [Color(0xFF1C608D), Color(0xFF3192D9).withOpacity(0.9)],
                              )
                                  : LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [Color(0xFFF8F8F8), Color(0xFFF8F8F8)],
                              ),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                normalUser
                                    ? BoxShadow(
                                  blurRadius: 5,
                                  offset: Offset(-1,1),
                                  color: Color(0xFF1C608D).withOpacity(0.15),
                                )
                                    : BoxShadow(
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset('assets/icons/icon1.png',height: 45,width: 45,),
                                Text(
                                  'normal user'.tr().toString(),
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color:
                                    normalUser ? Colors.white : Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              normalUser = false;
                            });
                          },
                          child: Container(
                            height: 120,
                            decoration: BoxDecoration(
                              // color: normalUser
                              //     ? Color(0xFFF8F8F8)
                              //     : Color(0xFF1C608D),
                              gradient:  normalUser
                                  ? LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0xFFF8F8F8), Color(0xFFF8F8F8)],
                               )
                                 : LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [Color(0xFF1C608D), Color(0xFF3192D9).withOpacity(0.9)],
                              ),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                               normalUser
                                   ? BoxShadow(
                                 color: Colors.white,
                               )
                                   : BoxShadow(
                                  blurRadius: 10,
                                  offset: Offset(-1,1),
                                  color: Color(0xFF1C608D).withOpacity(0.15),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset('assets/icons/icon2.png',height: 45,width: 45,),
                                Text(
                                  'captain checked'.tr().toString(),
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: normalUser
                                        ? Color(0xFFA2A2A2)
                                        : Color(0xFFFFFFFF),
                                  ),
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
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Container(
                    width: double.infinity,
                    // height: 400,
                    // normalUser ? 500 : 440,
                    decoration: BoxDecoration(
                      color: Color(0xFFF8F8F8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 25, right: 25, top: 25),
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
                              onChanged: (value) {
                                if (value.toString().isNotEmpty) {
                                  return '';
                                } else if (value.toString().length >= 8) {
                                  return 'shortPass';
                                }
                                phone = value;
                              },
                              onSave: (newValue) {
                                setState(() {
                                  phone = newValue;
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
                            if (normalUser)
                              SizedBox(
                                height: 15,
                              ),
                            if (normalUser)
                              Container(
                                height: 45,
                                padding: EdgeInsets.only(left: 15, right: 15),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: DropdownButton<String>(
                                  underline: Text(''),
                                  items: city.map((String value) {
                                    return new DropdownMenuItem<String>(
                                      value: value,
                                      child: new Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (newValue) {
                                    setState(() {
                                      _newCity = newValue;
                                    });
                                  },
                                  value: _newCity,
                                  isExpanded: true,
                                  hint: Text(
                                    'المدينة',
                                    style: TextStyle(
                                      color: Color(0xFFBFBFBF),
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            SizedBox(
                              height: 15,
                            ),
                            inputField(
                              hint: 'الرقم السرى',
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
                                  password = newValue;
                                });
                              },
                              onChanged: (value) {
                                if (value.toString().isNotEmpty) {
                                  return 'okk';
                                } else if (value.toString().length >= 8) {
                                  return 'ok';
                                }
                                password = value;
                              },
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            inputField(
                              hint: 'اعد كتابة الرقم السرى',
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
                                } else if (password == value) {
                                  return ' not equal';
                                }
                                return null;
                              },
                              onSave: (newValue) {
                                setState(() {
                                  conformPassword = newValue;
                                });
                              },
                              onChanged: (value) {
                                if (value.toString().isNotEmpty) {
                                  return 'ok';
                                } else if (value.toString().isNotEmpty &&
                                    password == conformPassword) {
                                  return 'okk';
                                }
                                conformPassword = value;
                              },
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            defaultButton(
                              text: 'تسجيل',
                              function: () {
                                if (!_formKey.currentState.validate()) {
                                  print('not validated');
                                  return;
                                } else {
                                  print(' validated');
                                  _formKey.currentState.save();
                                  if (normalUser) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => ActivationCodeScreen(),
                                      ),
                                    );
                                  } else {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => ActivationCodeScreen2(),
                                      ),
                                    );
                                  }
                                }
                              },
                            ),
                            SizedBox(
                              height: 30,
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
                              height: 16,
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
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => LogInScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'هل لديك حساب ؟ تسجيل دخول',
                    style: TextStyle(
                      color: Color(0xFFBFBFBF),
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
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
