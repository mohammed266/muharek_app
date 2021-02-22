import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class ScreenTop extends StatelessWidget {
  const ScreenTop({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: 270,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: EasyLocalization.of(context).locale == Locale('en', 'US')
              ? AssetImage('assets/images/image3.png')
              : AssetImage('assets/images/image2.png',),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Container(
                height: 37,
                width: 37,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF3192D9),
                ),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              EasyLocalization.of(context).locale == Locale('en', 'US')
                  ? Container(
                      height: 50,
                      width: size.width * 0.3,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF0000000D),
                            offset: Offset(-6, 6),
                            blurRadius: 12,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'تسجيل الدخول',
                          style: TextStyle(
                            color: Color(0xFF2777B2),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
                  : Container(
                      height: 50,
                      width: size.width * 0.3,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFBFBFBF).withOpacity(.3),
                            offset: Offset(-6, 6),
                            blurRadius: 12,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'تسجيل الدخول',
                          style: TextStyle(
                            color: Color(0xFF2777B2),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
              Spacer(),
              Container(
                height: 150,
                width: size.width * .6,
                child: EasyLocalization.of(context).locale == Locale('en', 'US')
                    ? Image.asset(
                        'assets/images/car3.png',
                        fit: BoxFit.fill,
                      )
                    : Image.asset(
                        'assets/images/car1.png',
                        fit: BoxFit.fill,
                      ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
