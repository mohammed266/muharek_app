import 'package:flutter/material.dart';
import '../../../shared/components/component.dart';
import 'components/screen_top.dart';
import 'components/drawer_list.dart';
import 'components/screen_ middle.dart';
import 'components/screen_bottom.dart';

class Home1Screen extends StatefulWidget {
  @override
  _Home1ScreenState createState() => _Home1ScreenState();
}

class _Home1ScreenState extends State<Home1Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFFF8F8F8),
          iconTheme: IconThemeData(
            color: Color(0xFF2777B2),
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
                  child: inputField(
                    icon: true,
                    onSave: (value) {},
                    onChanged: (value) {},
                    prefix: Icon(
                      Icons.search,
                      color: Color(0xFF2777B2),
                      size: 17,
                    ),
                    hint: '',
                    secure: false,
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
                      borderRadius: BorderRadius.circular(13),
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.notifications_none,
                      color: Color(0xFF2777B2),
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
        drawer: drawerList(context),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: ListView(
            children: [
              ScreenTop(),
              SizedBox(
                height: 15,
              ),
              ScreenMiddle(),
              SizedBox(
                height: 15,
              ),
              ScreenBottom(),
            ],
          ),
        ),
      ),
    );
  }
}
