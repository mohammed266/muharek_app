import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../shared/components/component.dart';
import 'drawer_list.dart';

class CheckingRepHomeScreen extends StatefulWidget {
  @override
  _CheckingRepHomeScreenState createState() => _CheckingRepHomeScreenState();
}

class _CheckingRepHomeScreenState extends State<CheckingRepHomeScreen> {
  bool isReady = true;
  bool order = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        drawer: DrawerListRep(),
        appBar: AppBar(
          backgroundColor: Color(0xFFF8F8F8),
          iconTheme: IconThemeData(
            color: Colors.indigo,
          ),
          toolbarHeight: order ? 65 : 75,
          elevation: 0.0,
          actions: [
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width / 1.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Center(
                      child: Text(
                    'اليوم 0 ريال',
                    style: TextStyle(fontSize: 15, color: Color(0xFF2B2F3B)),
                  )),
                ),
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.red,
                  ),
                  // child: ,
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
          ],
          leading: Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                onTap: () { Scaffold.of(context).openDrawer(); },
                child: Column(
                  children: [
                    SizedBox(
                      height: 18,
                    ),
                    Container(
                      height: 35,
                      width: 35,
                      child: Image.asset(
                        'assets/icons/icon64.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        body: Stack(
          children: [
            Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/images/map.png',
                  fit: BoxFit.fitWidth,
                )),
            if (order)
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: double.infinity,
                color: Color(0xFFF8F8F8),
              ),
            if (order)
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'طلب رقم 25452154',
                        style:
                            TextStyle(fontSize: 15, color: Color(0xFF3192D9)),
                      ),
                      Text(
                        'موقع العميل: عنوان العميل يكتب هنا',
                        style:
                            TextStyle(fontSize: 15, color: Color(0xFF707070)),
                      ),
                    ],
                  ),
                ),
              ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 35,left: 20,right: 20),
                child: isReady
                    ? Container(
                        height: 200,
                        // MediaQuery.of(context).size.height * 0.35,
                        width: double.infinity,
                        // MediaQuery.of(context).size.width * 0.9,
                         decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(300),
                            topRight: Radius.circular(300),
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 50,
                              width: 70,
                              child: Image.asset(
                                'assets/images/image26.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              '..مساء الخير ..',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            Text(
                              'ابدأ في استقبال الطلبات',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                            Spacer(),
                            defaultButton(
                              color: Color(0xFF1C608D),
                              text: 'ابدأ',
                              function: () {
                                setState(() {
                                  isReady = false;
                                });
                              },
                              r: 13,
                            ),
                          ],
                        ),
                      )
                    : Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(300),
                            topRight: Radius.circular(300),
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 50,
                              width: 70,
                              child: Image.asset(
                                'assets/images/image27.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              '..خلك مستعد ..',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            Text(
                              'جارى استقبال الطلبات',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                            Spacer(),
                            defaultButton(
                              color: Color(0xFF1C608D),
                              text: 'ابدأ',
                              function: () {
                                setState(() {
                                  order = true;
                                });
                              },
                              r: 13,
                            ),
                          ],
                        ),
                      ),
              ),
            ),
            if (order)
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 35,left: 18,right: 18),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height:200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(300),
                              topRight: Radius.circular(300),
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                            border: Border.all(color: Colors.red, width: 4),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                '30:00',
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xFFFF5A5A)),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'فحص كمبيوتر',
                                style: TextStyle(
                                    fontSize: 15, color: Color(0xFF2B2F3B)),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    '‏150 ريال',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey),
                                  ),
                                  Text(
                                    'نقدى',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey),
                                  ),
                                ],
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  print('kk');
                                },
                                child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(13),
                                      topRight: Radius.circular(13),
                                    ),
                                    color: Color(0xFF0BC500),
                                  ),
                                  child: Center(
                                      child: Text(
                                    'قبول',
                                    style: TextStyle(color: Colors.white),
                                  )),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  print('kk');
                                },
                                child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(13),
                                      bottomLeft: Radius.circular(13),
                                    ),
                                    color: Color(0xFFFF5A5A),
                                  ),
                                  child: Center(
                                      child: Text(
                                    'رفض',
                                    style: TextStyle(color: Colors.white),
                                  )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
