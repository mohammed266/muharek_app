import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../shared/components/component.dart';
import '../normal_user_home/normal_user_home_screen.dart';
import '../login/login_screen.dart';
import '../signup/signup_screen.dart';
import 'components/icon_image_splash2.dart';
import 'package:easy_localization/easy_localization.dart';

class Splash2Screen extends StatefulWidget {
  @override
  _Splash2ScreenState createState() => _Splash2ScreenState();
}

class _Splash2ScreenState extends State<Splash2Screen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF8F8F8),
        body: Column(
          children: [
            IconAndImage(),
            Spacer(),
            Stack(
              children: [
                ClipPath(
                  clipper: RoundedDiagonalPathClipper(),
                  child: Container(
                    height: size.height * 0.6,
                    width: double.infinity,
                    color: Color(0xFF1C608D).withOpacity(.9),
                    // child: Center(child: ),
                  ),
                ),
                Positioned(
                  top: 0,
                  width: size.width* 0.75,
                  height: size.height* 0.26,
                  left: 15,
                  child: Image.asset(
                    'assets/images/car.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: size.height* 0.3,
                  left: size.width * 0.03,
                  right: size.width * 0.03,
                  child: Padding(
                    padding: EdgeInsets.only(left: 35,right: 35),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: defaultButton(
                            opa: 0.5,
                            function: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => LogInScreen(),
                                ),
                              );
                            },
                            text: 'splash2 sign up'.tr().toString(),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        GestureDetector(
                          onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => SignUpScreen(),
                                  ),
                                );
                          },
                          child: Container(
                            width: double.infinity,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text('splash2 new sign Up'.tr().toString(),
                                style: TextStyle(color: Color(0xFF1C608D)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => HomeScreen(),
                              ),
                            );
                          },
                          child: Text(
                            'splash2 skip'.tr().toString(),
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w100,
                            ),
                          ),
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
    );
  }
}
