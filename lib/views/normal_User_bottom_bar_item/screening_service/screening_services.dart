import 'package:flutter/material.dart';
import 'package:muharek_app/shared/components/component.dart';
import 'package:muharek_app/views/normal_User_bottom_bar_item/home/components/screen_bottom.dart';

class ScreeningServicesScreen extends StatefulWidget {
  @override
  _ScreeningServicesScreenState createState() =>
      _ScreeningServicesScreenState();
}

class _ScreeningServicesScreenState extends State<ScreeningServicesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: SizedBox(),
          backgroundColor: Color(0xFFF8F8F8),
          iconTheme: IconThemeData(
            color: Colors.indigo,
          ),
          toolbarHeight: 75,
          elevation: 0.0,
          actions: [
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 35,
                  width: MediaQuery.of(context).size.width / 1.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
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
                    height: 35,
                    width: 35,
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
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 15,right: 15),
          child: ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  WorkshopContainer(
                    title: 'فحص كمبيوتر',
                    image: 'assets/icons/icon4.png',
                    onTap: (){
                      print('pp');
                    },
                  ),
                  Spacer(),
                  WorkshopContainer(
                    title: 'فحص هيكل',
                    image: 'assets/icons/icon5.png',
                    onTap: (){
                      print('pp');
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  WorkshopContainer(
                    title: 'فحص محرك',
                    image: 'assets/icons/icon6.png',
                    onTap: (){
                      print('pp');
                    },
                  ),
                  Spacer(),
                  WorkshopContainer(
                    title: 'فحص شامل',
                    image: 'assets/icons/icon7.png',
                    onTap: (){
                      print('pp');
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
