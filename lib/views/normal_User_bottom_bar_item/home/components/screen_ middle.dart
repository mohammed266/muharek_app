import 'package:flutter/material.dart';
import '../../../adv_screen_for_owner_advertisement/adv_screen_for_owner_adv.dart';
import 'service_title.dart';
import '../../../offer_details/offer_details.dart';

class ScreenMiddle extends StatefulWidget {
  @override
  _ScreenMiddleState createState() => _ScreenMiddleState();
}

class _ScreenMiddleState extends State<ScreenMiddle> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        ServiceTitle(
          image: 'assets/icons/icon21.png',
          title: 'اخر عروض ورش الصيانة',
          place: '(الرياض)',
          allService: 'كل العروض',
          onTap: () {
            print('55');
          },
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height:size.height * 0.275,
          width: size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (_, i) => Padding(
              padding: EdgeInsets.only(left: 15),
              child: Container(
                width:size.width / 1.4,
                // height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  image: DecorationImage(
                    image: AssetImage('assets/images/image9.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: Color(0xFF000000).withOpacity(0.5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 20, horizontal: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                    'assets/icons/icon33.png',
                                  height: 19,
                                  width: 19,
                                ),
                                SizedBox(
                                  width: size.width* 0.02,
                                ),
                                Text(
                                  'ورشة أبو مازن (الرياض)',
                                  style: TextStyle(
                                      fontSize: 8, color: Colors.white),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: size.height* 0.016,
                            ),
                            Text(
                              'فحص شامل على كامل السيارة \n ب300 ريال',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.white),
                            ),
                            SizedBox(
                              height: size.height* 0.016,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(context,
                                  MaterialPageRoute(builder: (_) =>
                                      OfferDetailScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                height: 30,
                                width: 85,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Text(
                                    'احجز الان',
                                    style: TextStyle(
                                      color: Color(0xFF2777B2),
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height* 0.12,
                            // 70,
                            width: MediaQuery.of(context).size.width / 4.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(80),
                                topLeft: Radius.circular(17),
                              ),
                              // color: Color(0xFF1C608D),
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [Color(0xFF1C608D), Color(0xFF3192D9),],
                              ),
                            ),
                            child: Padding(
                              padding:
                              const EdgeInsets.only(right: 25, top: 10),
                              child: Text(
                                'من 20 الى \n 27 ديسمبر',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 9,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        ServiceTitle(
          image: 'assets/icons/icon34.png',
          title: 'اخر الاعلانات المضافة',
          place: '(الرياض)',
          allService: 'كل الاعلانات',
          onTap: () {
            print('66');
          },
        ),
        SizedBox(
          height: size.height * 0.015,
        ),
        Container(
          height: MediaQuery.of(context).size.height* 0.36,
          // 200,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (_, i) => Padding(
              padding: EdgeInsets.only(left: 5),
              child: InkWell(
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (_) =>
                        AdvScreenForOwnerAdv(),
                    ),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.9,
                  // height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: Colors.transparent,
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Color(0xFFBFBFBF).withOpacity(.1),
                    //     offset: Offset(-2, 2),
                    //     blurRadius: 5,
                    //     spreadRadius: 5,
                    //   ),
                    // ],
                  ),
                  child: Card(
                    elevation: 4,
                    shadowColor: Color(0xFFBFBFBF).withOpacity(.1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: size.height* 0.17,
                          width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/image11.png'),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(17),
                              topRight: Radius.circular(17),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: size.height* 0.01,
                              ),
                              InkWell(
                                onTap: () {
                                  print('22');
                                },
                                child: Image.asset(
                                    'assets/icons/icon35.png',
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                              Spacer(),
                              Container(
                                height: 20,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Color(0xFF2777B2),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '5',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Icon(
                                      Icons.photo,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: size.height* 0.01,
                        ),
                        Text(
                          'تويوتا لاندكروزر',
                          style: TextStyle(
                              color: Color(0xFF2777B2),
                              fontSize: 10,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: size.height* 0.01,
                        ),
                        Text(
                          '2005',
                          style: TextStyle(
                              color: Color(0xFF555555), fontSize: 10),
                        ),
                        SizedBox(
                          height: size.height* 0.01,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.place,
                              color: Color(0xFF555555),
                              size: 15,
                            ),
                            Text(
                              'الرياض',
                              style: TextStyle(
                                  color: Color(0xFF555555), fontSize: 10),
                            ),
                            SizedBox(
                              width: size.width* 0.09,
                            ),
                            Icon(
                              Icons.watch_later_outlined,
                              color: Color(0xFF555555),
                              size: 15,
                            ),
                            Text(
                              'منذ10ساعة',
                              style: TextStyle(
                                  color: Color(0xFF555555), fontSize: 10),
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          height: size.height* 0.055,
                          width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(
                            // color: Color(0xFF1C608D),
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0xFF1C608D), Color(0xFF3192D9),],
                            ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(17),
                              bottomRight: Radius.circular(17),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              '‏75000 ر.س',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
