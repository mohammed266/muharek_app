import 'package:flutter/material.dart';
import 'package:muharek_app/shared/components/component.dart';
import 'package:muharek_app/views/add_adv/add_adv.dart';
import 'package:muharek_app/views/adv_screen_for_owner_advertisement/adv_screen_for_owner_adv.dart';
import 'package:muharek_app/views/filter_ads/filter_ads.dart';
import 'package:muharek_app/views/normal_User_bottom_bar_item/home/components/service_title.dart';

class AdsScreen extends StatefulWidget {
  @override
  _AdsScreenState createState() => _AdsScreenState();
}

class _AdsScreenState extends State<AdsScreen> {
  Future<void> _showDialog() async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: Column(
            children: [
              SizedBox(height: 50),
              Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                backgroundColor: Color(0xFFFFFFFF),
                insetPadding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 20,
                  bottom: MediaQuery.of(context).size.height / 20,
                  right: 10,
                  left: 10,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 19,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15,right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'عناوينى',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF2777B2),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.close,
                              color: Color(0xFF2777B2),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15,right: 15),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width* 0.65,
                            decoration: BoxDecoration(
                              color: Color(0xFFF8F8F8),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Radio(
                                    value: null,
                                    groupValue: null,
                                    onChanged: null,
                                ),
                                Text(
                                  'الخبر',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              //
                            },
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFFF8F8F8),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15,right: 15),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width* 0.65,
                            decoration: BoxDecoration(
                              color: Color(0xFFF8F8F8),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Radio(
                                    value: null,
                                    groupValue: null,
                                    onChanged: null,
                                ),
                                Text(
                                  'الخبر',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              //
                            },
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFFF8F8F8),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15,right: 15),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width* 0.65,
                            decoration: BoxDecoration(
                              color: Color(0xFFF8F8F8),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Radio(
                                    value: null,
                                    groupValue: null,
                                    onChanged: null),
                                Text(
                                  'الخبر',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              //
                            },
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFFF8F8F8),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 27,right: 15),
                      child: InkWell(
                        onTap: (){
                          print('jjj');
                        },
                        child: Container(
                          padding: EdgeInsets.only(right: 15,left: 15),
                          height: 40,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Color(0xFFF8F8F8),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 22,
                                width: 22,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Icon(Icons.add,color: Color(0xFF2777B2),size: 14,),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text('إضافة عنوان',style: TextStyle(fontSize: 15,color: Color(0xFF2777B2)),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35,right: 35),
                      child: defaultButton(
                        text: 'تأكيد',
                        function: (){

                        },
                        color: Color(0xFF2777B2),
                        r: 10,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(context),
        floatingActionButton: FloatingActionButton(
          elevation: 1,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => AddAdvScreen(),
              ),
            );
          },
          backgroundColor: Color(0xFF1C608D),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Text(
                    'اقسام الاعلانات',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF1C608D),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => FilterAdsScreen(),
                        ),
                      );
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Color(0xFFF8F8F8),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.sort,
                          color: Color(0xFF2777B2),
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 160,
                child: ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, i) => Padding(
                    padding: EdgeInsets.only(left: 7),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 3.65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: Color(0xFFF8F8F8),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/image15.png',
                            fit: BoxFit.fill,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'إعلانات السيارات',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF555555),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '‏300 اعلان',
                            style: TextStyle(
                              fontSize: 8,
                              color: Color(0xFF2777B2),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ServiceTitle(
                image: 'assets/icons/icon26.png',
                title: 'الإعلانات المميزة',
                place: '(الرياض)',
                allService: '(الكل)',
                onTap: () {
                  print('44');
                },
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 160,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (_, i) => Padding(
                    padding: EdgeInsets.only(left: 10, bottom: 15),
                    child: Container(
                      // height: 160,
                      width: MediaQuery.of(context).size.width / 1.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        image: DecorationImage(
                          image: AssetImage('assets/images/image14.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Color(0xFF000000).withOpacity(.5),
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      print('22');
                                    },
                                    child:
                                        Image.asset('assets/icons/icon35.png'),
                                  ),
                                  Text(
                                    'تويوتا لاندكروزر',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '2005',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.place,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                      Text(
                                        'الرياض',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.watch_later_outlined,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'منذ10ساعة',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, bottom: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      print('oo');
                                    },
                                    child: Container(
                                      height: 20,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF2777B2),
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(7),
                                          bottomLeft: Radius.circular(7),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            '5',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
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
                                  ),
                                  Spacer(),
                                  Text(
                                    '‏75000 ر.س',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (_, i) => Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => AdvScreenForOwnerAdv(),
                        ),
                      );
                    },
                    child: Container(
                      height: 110,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 3.8,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/image13.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 20,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF2777B2),
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(7),
                                        bottomLeft: Radius.circular(7),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '5',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
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
                                  Spacer(),
                                  InkWell(
                                    onTap: () {
                                      print('22');
                                    },
                                    child:
                                        Image.asset('assets/icons/icon35.png'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
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
                                        color: Color(0xFF555555),
                                        fontSize: 10,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.watch_later_outlined,
                                      color: Color(0xFF555555),
                                      size: 15,
                                    ),
                                    Text(
                                      'منذ10ساعة',
                                      style: TextStyle(
                                          color: Color(0xFF555555),
                                          fontSize: 10),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 4.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(17),
                                topLeft: Radius.circular(17),
                              ),
                              color: Color(0xFFF8F8F8),
                            ),
                            child: Center(
                              child: Text(
                                '‏75000 ر.س',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF2777B2),
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
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
        leading: SizedBox(),
        backgroundColor: Color(0xFFF8F8F8),
        iconTheme: IconThemeData(
          color: Colors.indigo,
        ),
        toolbarHeight: 70,
        elevation: 0.0,
        actions: [
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  _showDialog();
                },
                child: Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  height: 30,
                  width: MediaQuery.of(context).size.width / 1.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'الموقع الحالى',
                        style:
                            TextStyle(fontSize: 10, color: Color(0xFFDCDCDC)),
                      ),
                      Icon(
                        Icons.location_on,
                        color: Color(0xFF2777B2),
                        size: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  print('ll');
                },
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.search,
                    color: Colors.indigo,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
        ],
      );
  }
}
