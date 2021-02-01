import 'package:flutter/material.dart';
import 'package:muharek_app/views/adv_screen_for_owner_advertisement/adv_screen_for_owner_adv.dart';
import 'package:muharek_app/views/normal_User_bottom_bar_item/home/components/service_title.dart';
import 'package:muharek_app/views/offer_details/offer_details.dart';

class ScreenMiddle extends StatefulWidget {
  @override
  _ScreenMiddleState createState() => _ScreenMiddleState();
}

class _ScreenMiddleState extends State<ScreenMiddle> {
  @override
  Widget build(BuildContext context) {
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
          height: 150,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (_, i) => Padding(
              padding: EdgeInsets.only(left: 15),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.4,
                height: 150,
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
                                Image.asset('assets/icons/icon33.png'),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'ورشة أبو مازن (الرياض)',
                                  style: TextStyle(
                                      fontSize: 8, color: Colors.white),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'فحص شامل على كامل السيارة \n ب300 ريال',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.white),
                            ),
                            SizedBox(
                              height: 8,
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
                            height: 70,
                            width: MediaQuery.of(context).size.width / 4.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(80),
                                topLeft: Radius.circular(17),
                              ),
                              color: Color(0xFF1C608D),
                            ),
                            child: Padding(
                              padding:
                              const EdgeInsets.only(right: 25, top: 10),
                              child: Text(
                                'من 20 الى \n 27 ديسمبر',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
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
          height: 15,
        ),
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (_, i) => Padding(
              padding: EdgeInsets.only(left: 10),
              child: InkWell(
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (_) =>
                        AdvScreenForOwnerAdv(),
                    ),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: Colors.grey.withOpacity(0.1),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 90,
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
                              height: 5,
                            ),
                            InkWell(
                              onTap: () {
                                print('22');
                              },
                              child: Image.asset('assets/icons/icon35.png'),
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
                        height: 6,
                      ),
                      Text(
                        'تويوتا لاندكروزر',
                        style: TextStyle(
                            color: Color(0xFF2777B2),
                            fontSize: 10,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        '2005',
                        style: TextStyle(
                            color: Color(0xFF555555), fontSize: 10),
                      ),
                      SizedBox(
                        height: 6,
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
                            width: 30,
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
                        height: 30,
                        width: MediaQuery.of(context).size.width / 2,
                        decoration: BoxDecoration(
                          color: Color(0xFF1C608D),
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
      ],
    );
  }
}
