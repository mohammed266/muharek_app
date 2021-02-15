import 'package:flutter/material.dart';
import 'package:material_segmented_control/material_segmented_control.dart';
import 'package:muharek_app/views/orders_sections/current_orders_details.dart';
import 'package:muharek_app/views/orders_sections/past_orders_details.dart';
import 'package:muharek_app/views/orders_sections/up_coming_orders_details.dart';

class MyOrdersScreen extends StatefulWidget {
  @override
  _MyOrdersScreenState createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  int _currentSelection = 0;

  Map<int, Widget> _children = {
    0: Text(
      'الطلبات الحالية',
      style: TextStyle(fontSize: 12),
    ),
    1: Text(
      'الطلبات القادمة',
      style: TextStyle(fontSize: 12),
    ),
    2: Text(
      'الطلبات الماضية',
      style: TextStyle(fontSize: 12),
    ),
  };

  Map<int, Widget> icons = <int, Widget>{
    0: Center(
      child: CurrentOrders(),
    ),
    1: Center(
      child: UpcomingOrders(),
    ),
    2: Center(
      child: PastOrders(),
    ),
  };

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(context),
        body: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            MaterialSegmentedControl(
              children: _children,
              selectionIndex: _currentSelection,
              borderColor: Colors.grey,
              selectedColor: Color(0xFF3192D9),
              unselectedColor: Colors.white,
              borderRadius: 32.0,
              disabledChildren: [
                3,
              ],
              onSegmentChosen: (index) {
                setState(() {
                  _currentSelection = index;
                });
              },
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: icons[_currentSelection],
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        'طلباتى',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14,
          color: Color(0xFF4C5264),
        ),
      ),
      leading: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Icon(
                  Icons.arrow_back,
                  color: Color(0xFF4C5264),
                ),
              ),
            ),
          ),
        ],
      ),
      elevation: 0.0,
      backgroundColor: Color(0xFFF8F8F8),
      toolbarHeight: 60,
    );
  }
}

class CurrentOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20,right: 20),
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 2,
        itemBuilder: (_, i) => Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) => CurrentOrdersDetailsScreen(),),);
            },
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(0xFFDCDCDC),),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Row(
                          children: [
                            Text('كابتن فحص',style: TextStyle(fontSize: 10,color: Color(0xFF2B2F3B)),),
                            Text('(طلب رقم 2154658497)',style: TextStyle(fontSize: 10,color: Color(0xFF2B2F3B)),),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/icon7.png'),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('خدمة فحص',style: TextStyle(fontSize: 12,color: Color(0xFF3192D9))),
                              Text('فحص شامل',style: TextStyle(fontSize: 10,color: Color(0xFF555555))),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('‏15 يناير',style: TextStyle(fontSize: 10,color: Color(0xFFBFBFBF))),
                        Text('قيد الاجراء',style: TextStyle(fontSize: 12,color: Color(0xFF3192D9))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class UpcomingOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20,right: 20),
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 2,
        itemBuilder: (_, i) => Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) => UpComingOrdersDetailsScreen(),),);
            },
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(0xFFDCDCDC),),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Row(
                          children: [
                            Text('كابتن فحص',style: TextStyle(fontSize: 10,color: Color(0xFF2B2F3B)),),
                            Text('(طلب رقم 2154658497)',style: TextStyle(fontSize: 10,color: Color(0xFF2B2F3B)),),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/icon4.png'),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('خدمة فحص',style: TextStyle(fontSize: 12,color: Color(0xFF3192D9))),
                              Text('فحص كمبيوتر',style: TextStyle(fontSize: 10,color: Color(0xFF555555))),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('‏15 يناير',style: TextStyle(fontSize: 10,color: Color(0xFFBFBFBF))),
                        Text('مجدول',style: TextStyle(fontSize: 12,color: Color(0xFF3192D9))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PastOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20,right: 20),
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 2,
        itemBuilder: (_, i) => Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) => PastOrdersDetailsScreen(),),);
            },
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(0xFFDCDCDC),),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Row(
                          children: [
                            Text('كابتن فحص',style: TextStyle(fontSize: 10,color: Color(0xFF2B2F3B)),),
                            Text('(طلب رقم 2154658497)',style: TextStyle(fontSize: 10,color: Color(0xFF2B2F3B)),),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/icon4.png'),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('خدمة فحص',style: TextStyle(fontSize: 12,color: Color(0xFF3192D9))),
                              Text('فحص هيكل',style: TextStyle(fontSize: 10,color: Color(0xFF555555))),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('‏15 يناير',style: TextStyle(fontSize: 10,color: Color(0xFFBFBFBF))),
                        Text('تم الالغاء',style: TextStyle(fontSize: 12,color: Color(0xFF3192D9))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
