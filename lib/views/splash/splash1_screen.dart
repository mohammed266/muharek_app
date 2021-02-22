import 'package:flutter/material.dart';
import '../../shared/components/component.dart';
import 'splash2_screen.dart';

class Splash1Screen extends StatefulWidget {
  @override
  _Splash1ScreenState createState() => _Splash1ScreenState();
}

class _Splash1ScreenState extends State<Splash1Screen> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 1),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Splash2Screen()),
            ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF8F8F8),
        body: Column(
          children: [
            SizedBox(
              height: size.height * 0.1,
              width: double.infinity,
            ),
            Image.asset(
              'assets/icons/logo1.png',
              height: 140,
              width: 90,
            ),
            Spacer(),
            Stack(
              children: [
                ClipPath(
                  clipper: RoundedDiagonalPathClipper(),
                  child: Container(
                    height: size.height * 0.5,
                    width: double.infinity,
                    color: Color(0xFF1C608D),
                    // child: Center(child: ),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  width: size.height* 0.58,
                  height: size.height * 0.4,
                  child: Image.asset('assets/images/car.png'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/*


 */
