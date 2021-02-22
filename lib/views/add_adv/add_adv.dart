import 'package:flutter/material.dart';
import 'components/adv_rating.dart';
import 'components/commission.dart';
import 'components/extra_info.dart';

import 'package:material_segmented_control/material_segmented_control.dart';



class AddAdvScreen extends StatefulWidget {
  @override
  _AddAdvScreenState createState() => _AddAdvScreenState();
}

class _AddAdvScreenState extends State<AddAdvScreen> {
   int _currentSelection = 0;

  Map<int, Widget> _children = {
    0: Text(
      'اتفاقية العمولة',
      style: TextStyle(fontSize: 12),
    ),
    1: Text(
      'تصنيف الاعلان',
      style: TextStyle(fontSize: 12),
    ),
    2: Text(
      'معلومات اضافية',
      style: TextStyle(fontSize: 12),
    ),
  };

  @override
  Widget build(BuildContext context) {
    ScrollController controller = ScrollController(initialScrollOffset: 0.0);
    final Map<int, Widget> icons = <int, Widget>{
      0: Center(
        child: CommissionAgreement(
          onSegmentChosen: (){
          setState(() {
            _currentSelection = 1;
          });
          controller.animateTo(0,curve: Curves.elasticInOut,duration: Duration(microseconds: 1000));
        },
        ),
      ),
      1: Center(
        child: AdvRating(
          onSegmentChosen1: (){
            setState(() {
              _currentSelection = 2;
            });
            controller.animateTo(0,curve: Curves.elasticInOut,duration: Duration(microseconds: 1000));
          },
        ),
      ),
      2: Center(
        child: ExtraInfo(),
      ),
    };
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(context),
        body: ListView(
          controller: controller,
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
        'إضافة اعلان',
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

