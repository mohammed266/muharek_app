import 'package:flutter/material.dart';
import 'package:muharek_app/views/normal_User_bottom_bar_item/ads/ads.dart';
import 'package:muharek_app/views/normal_User_bottom_bar_item/home/home.dart';
import 'package:muharek_app/views/normal_User_bottom_bar_item/maintenance_workshops/maintenance_workshops.dart';
import 'package:muharek_app/views/normal_User_bottom_bar_item/screening_service/screening_services.dart';
import 'package:muharek_app/views/normal_User_bottom_bar_item/workshops_on_map.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Home1Screen(),
    MaintenanceWorkshopsScreen(),
    WorkshopOnMapScreen(),
    AdsScreen(),
    ScreeningServicesScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF1C608D),
          // Color(0xFF002659),
          unselectedFontSize: 10,
          unselectedItemColor: Colors.grey,
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w400),
          selectedItemColor: Colors.white,
          selectedLabelStyle:
              TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
          onTap: (value) {
            _currentIndex = value;
            setState(() {});
          },
          currentIndex: _currentIndex,
          selectedFontSize: 20,
          type: BottomNavigationBarType.fixed,
          elevation: 0.0,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white),
                  width: 30,
                  child: Image.asset('assets/icons/icon32.png'),
                ),
              ),
              label: 'الرئيسية',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  width: 30,
                  child: Image.asset('assets/icons/icon26.png'),
                ),
              ),
              label: 'ورش الصيانة',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(top: 8),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    'assets/icons/icon30.png',
                    height: 25,
                    width: 25,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  width: 30,
                  child: Image.asset('assets/icons/icon21.png'),
                ),
              ),
              // Icon(Icons.home_outlined,color: Color(0xFF2777B2),size: 25,)),
              label: 'الاعلانات',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  width: 30,
                  child: Image.asset('assets/icons/icon31.png'),
                ),
              ),
              label: 'خدمات الفحص',
            ),
          ],
        ),
        body: _children[_currentIndex],
      ),
    );
  }
}
