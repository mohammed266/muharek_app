import 'package:flutter/material.dart';
import '../home/components/drawer_list.dart';
import '../../../shared/components/component.dart';
import '../../add_adv/add_adv.dart';
import '../../adv_screen_for_owner_advertisement/adv_screen_for_owner_adv.dart';
import '../../filter_ads/filter_ads.dart';
import '../home/components/service_title.dart';

class AdsScreen extends StatefulWidget {
  @override
  _AdsScreenState createState() => _AdsScreenState();
}

class _AdsScreenState extends State<AdsScreen> {
  final List _city = [
    {
      'name': 'الخبر',
    },
    {
      'name': 'الرياض',
    },
    {
      'name': 'المدينة',
    },
  ];

  @override
  void initState() {
    createVariables();
    super.initState();
  }

  List<bool> citySelectedList = [];
  createVariables() {
    citySelectedList = List.generate(_city.length, (i) => false);
  }

  Future<void> _showDialog() async {
    return showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Container(
              child: Column(
                children: [
                  SizedBox(
                      height: MediaQuery.of(context).size.height* 0.14,
                  ),
                  Dialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Color(0xFFFFFFFF),
                    insetPadding: EdgeInsets.only(
                      bottom: 50,
                      right: 10,
                      left: 10,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 19,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
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
                                onTap: () {
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
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: ListView.builder(
                            itemCount: _city.length,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (_, i) => Padding(
                              padding: EdgeInsets.only(bottom: 8),
                              child: Container(
                                height: 40,
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.only(right: 20),
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF8F8F8),
                                          borderRadius:
                                          BorderRadius.circular(10),
                                        ),
                                        child: Row(
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                setState(
                                                      () {
                                                    createVariables();
                                                    citySelectedList[i] = true;
                                                  },
                                                );
                                              },
                                              child: Container(
                                                padding: EdgeInsets.all(3),
                                                height: 20,
                                                width: 20,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(10),
                                                  border: Border.all(
                                                    width: 1.3,
                                                    color: citySelectedList[i]
                                                        ? Color(0xFF2777B2)
                                                        : Color(0xFFBFBFBF),
                                                  ),
                                                ),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: citySelectedList[i]
                                                        ? Color(0xFF2777B2)
                                                        : Color(0xFFBFBFBF),
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        10),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              '${_city[i]['name']}',
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return Container(
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 10, right: 10),
                                                child: Column(
                                                  children: [
                                                    SizedBox( height: MediaQuery.of(context).size.height* 0.2,),
                                                    Dialog(
                                                      shape:
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(20),
                                                      ),
                                                      backgroundColor:
                                                      Color(0xFFFFFFFF),
                                                      insetPadding:
                                                      EdgeInsets.only(
                                                        // top: MediaQuery.of(context).size.height* 0.14,
                                                        right: 10,
                                                        left: 10,
                                                      ),
                                                      child: Column(
                                                        children: [
                                                          SizedBox(
                                                            height: 20,
                                                          ),
                                                          Container(
                                                            height: 60,
                                                            width: 60,
                                                            decoration:
                                                            BoxDecoration(
                                                              borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                  30),
                                                              color: Color(
                                                                  0xFFFF5A5A),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 20,
                                                          ),
                                                          Text(
                                                            'متأكد من رغبتك في حذف \n العنوان :اسم العنوان',
                                                            style: TextStyle(
                                                              color:
                                                              Colors.black,
                                                              fontSize: 18,
                                                              fontWeight:
                                                              FontWeight
                                                                  .bold,
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Padding(
                                                            padding:
                                                            EdgeInsets.only(
                                                                left: 15,
                                                                right: 15),
                                                            child: Row(
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                  GestureDetector(
                                                                    onTap: () {
                                                                      Navigator.pop(
                                                                          context);
                                                                      _city.removeAt(
                                                                          i);
                                                                    },
                                                                    child:
                                                                    Container(
                                                                      height:
                                                                      40,
                                                                      decoration:
                                                                      BoxDecoration(
                                                                        borderRadius:
                                                                        BorderRadius.circular(25),
                                                                        color: Color(
                                                                            0xFFFF5A5A),
                                                                      ),
                                                                      child: Center(
                                                                          child: Text(
                                                                            'نعم',
                                                                            style:
                                                                            TextStyle(
                                                                              color:
                                                                              Colors.white,
                                                                              fontSize:
                                                                              12,
                                                                            ),
                                                                          )),
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 10,
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                  InkWell(
                                                                    onTap: () {
                                                                      Navigator.of(
                                                                          context)
                                                                          .pop();
                                                                    },
                                                                    child:
                                                                    Container(
                                                                      height:
                                                                      40,
                                                                      decoration:
                                                                      BoxDecoration(
                                                                        borderRadius:
                                                                        BorderRadius.circular(25),
                                                                        border:
                                                                        Border.all(
                                                                          color:
                                                                          Color(0xFF0BC500),
                                                                        ),
                                                                      ),
                                                                      child:
                                                                      Center(
                                                                        child:
                                                                        Text(
                                                                          'لا',
                                                                          style:
                                                                          TextStyle(
                                                                            color:
                                                                            Color(0xFF0BC500),
                                                                            fontSize:
                                                                            12,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: EdgeInsets
                                                                .only(
                                                                top: 50),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF8F8F8),
                                          borderRadius:
                                          BorderRadius.circular(10),
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
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 27, right: 15),
                          child: InkWell(
                            onTap: () {
                              print('jjj');
                            },
                            child: Container(
                              padding: EdgeInsets.only(right: 15, left: 15),
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
                                    child: Icon(
                                      Icons.add,
                                      color: Color(0xFF2777B2),
                                      size: 14,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'إضافة عنوان',
                                    style: TextStyle(
                                        fontSize: 15, color: Color(0xFF2777B2)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35, right: 35),
                          child: defaultButton(
                            text: 'تأكيد',
                            function: () {},
                            color: Color(0xFF1C608D),
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
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(context),
        drawer: drawerList(context),
        floatingActionButton: Padding(
          padding: EdgeInsets.only(bottom: 100),
          child: buildFloatingActionButton(context),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              SizedBox(
                height: 25,
              ),
              Title(),
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
                          Container(
                            width: double.infinity,
                            child: Image.asset(
                              'assets/images/image15.png',
                              fit: BoxFit.fill,
                            ),
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
                                        Image.asset(
                                            'assets/icons/icon35.png',
                                          height: 40,
                                          width: 40,
                                        ),
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
                  padding: EdgeInsets.only(bottom: 5),
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
                      height: MediaQuery.of(context).size.height* 0.18,
                      // 110,
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        elevation: 4,
                        shadowColor: Color(0xFFBFBFBF).withOpacity(.1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 4,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/image13.png',),
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
                                          Image.asset('assets/icons/icon35.png',height: 30,width: 30,),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(6),
                              width: MediaQuery.of(context).size.width / 2.62,
                              color: Colors.white,
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
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                              width: MediaQuery.of(context).size.width / 4.6,
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
              ),
              SizedBox(
                height: 100,
                // MediaQuery.of(context).size.height * 0.15,
              ),
            ],
          ),
        ),
      ),
    );
  }

  FloatingActionButton buildFloatingActionButton(BuildContext context) {
    return FloatingActionButton(
        mini: true,
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
          size: 20,
          color: Colors.white,
        ),
      );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
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
                  width: MediaQuery.of(context).size.width / 1.45,
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

class Title extends StatelessWidget {
  const Title({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
