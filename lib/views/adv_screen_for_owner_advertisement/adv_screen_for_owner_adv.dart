import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/component.dart';

import 'package:material_segmented_control/material_segmented_control.dart';


class AdvScreenForOwnerAdv extends StatefulWidget {
  @override
  _AdvScreenForOwnerAdvState createState() => _AdvScreenForOwnerAdvState();
}

class _AdvScreenForOwnerAdvState extends State<AdvScreenForOwnerAdv> {
  int _currentSelection = 0;
  Map<int, Widget> _children = {
    0: Text('التفاصيل',style: TextStyle(fontSize: 12),),
    1: Text('التعليقات',style: TextStyle(fontSize: 12),),
    2: Text('اعلانات مشابهة',style: TextStyle(fontSize: 12),),
  };
  final Map<int, Widget> icons = <int, Widget>{
    0: Center(
      child: Details(),
    ),
    1: Center(
      child: Comments(),
    ),
    2: Center(
      child: SameAds(),
    ),
  };

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 340,
                ),
                Container(
                  width: double.infinity,
                  height: 230,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(17),
                      bottomRight: Radius.circular(17),
                    ),
                    image: DecorationImage(
                      image: AssetImage('assets/images/image17.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Color(0xFF000000).withOpacity(0.5),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, right: 16, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
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
                          InkWell(
                            onTap: () {},
                            child: Image.asset(
                              'assets/icons/icon44.png',
                              height: 35,
                              width: 35,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Image.asset(
                              'assets/icons/icon43.png',
                              height: 35,
                              width: 35,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Image.asset(
                              'assets/icons/icon45.png',
                              height: 35,
                              width: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 20,
                  right: 20,
                  child: Container(
                    width: double.infinity,
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10,bottom: 10),
                      child: Column(
                        children: [
                          Text(
                            'بى ام دبليو الفئة الخامسة 2015',
                            style: TextStyle(
                                fontSize: 15, color: Color(0xFF3192D9)),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'رقم الإعلان ‏5487564AD',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFFBFBFBF)),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'الرياض',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFF707070)),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'مستعملة',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFF707070)),
                          ),
                          Text(
                            '‏80000 ر.س',
                            style: TextStyle(
                                fontSize: 20, color: Color(0xFF3192D9)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
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
          ],
        ),
      ),
    );
  }
}

