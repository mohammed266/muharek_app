import 'package:flutter/material.dart';

class IconAndImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15, right: 12),
          child: Align(
              alignment: Alignment.topRight,
              child: Image.asset('assets/images/image1.png')),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 25,
            ),
            Image.asset('assets/images/image1.png', width: 50),
            // SizedBox(
            //   width: size.width * 0.13,
            // ),
            Spacer(
              flex: 2,
            ),
            Image.asset(
              'assets/icons/logo1.png',
              height: 100,
              width: 80,
            ),
            Spacer(
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50,right: 30),
              child: Image.asset('assets/images/image1.png', width: 70),
            ),
          ],
        ),
      ],
    );
  }
}