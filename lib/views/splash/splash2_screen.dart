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
                    color: Color(0xFF1C608D),
                    // child: Center(child: ),
                  ),
                ),
                Positioned(
                  top: 0,
                  width: 230,
                  height: 140,
                  left: 15,
                  child: Image.asset(
                    'assets/images/car.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: 150,
                  left: size.width * 0.03,
                  right: size.width * 0.03,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      defaultButton(
                        color: Color(0xFF3192D9),
                        function: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => LogInScreen(),
                            ),
                          );
                        },
                        text: 'splash2 sign up'.tr().toString(),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      defaultButton(
                        color: Colors.white,
                        function: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => SignUpScreen(),
                            ),
                          );
                        },
                        text: 'splash2 new sign Up'.tr().toString(),
                        c: Color(0xFF1C608D),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
