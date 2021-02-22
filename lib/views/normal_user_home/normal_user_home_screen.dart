import 'package:flutter/material.dart';
import '../normal_User_bottom_bar_item/ads/ads.dart';
import '../normal_User_bottom_bar_item/home/home.dart';
import '../normal_User_bottom_bar_item/maintenance_workshops/maintenance_workshops.dart';
import '../normal_User_bottom_bar_item/screening_service/screening_services.dart';
import '../normal_User_bottom_bar_item/workshop_on_map/workshops_on_map.dart';

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
        body: Stack(
          children: [
            _children[_currentIndex],
            Positioned(
              bottom: 0,
              child: Container(
                // height: 110,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/image29.png'),
                    fit: BoxFit.fill,
                  ),
                   // color: Colors.white,
                ),
                child: BottomNavigationBar(
                  backgroundColor: Colors.transparent,
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
                        padding: EdgeInsets.only(bottom: 5, top: 30),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(7),
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: _currentIndex == 0
                                    ? Colors.white
                                    : Colors.white70,
                              ),
                              child: Image.asset(
                                'assets/icons/icon32.png',
                                height: 30,
                                width: 30,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Text(
                              'الرئيسية',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: _currentIndex == 0
                                      ? Colors.white
                                      : Colors.white70,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: Padding(
                        padding: EdgeInsets.only(bottom: 5, top: 30),
                        child: Column(
                          children: [
                            Container(
                              height: 30,
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: _currentIndex == 1
                                    ? Colors.white
                                    : Colors.white70,
                              ),
                              width: 30,
                              child: Image.asset(
                                'assets/icons/icon26.png',
                                height: 15,
                                width: 15,
                              ),
                            ),
                            Text(
                              'ورش الصيانة',
                              style: TextStyle(
                                  fontSize: 9,
                                  color: _currentIndex == 1
                                      ? Colors.white
                                      : Colors.white70,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Image.asset(
                          'assets/icons/icon30.png',
                          fit: BoxFit.cover,
                          height: 55,
                          width: 55,
                        ),
                      ),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: Padding(
                        padding: EdgeInsets.only(bottom: 5, top: 30),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: _currentIndex == 3
                                    ? Colors.white
                                    : Colors.white70,
                              ),
                              width: 30,
                              child: Image.asset(
                                'assets/icons/icon21.png',
                                height: 10,
                                width: 10,
                              ),
                            ),
                            Text(
                              'الاعلانات',
                              style: TextStyle(
                                  fontSize: 9,
                                  color: _currentIndex == 3
                                      ? Colors.white
                                      : Colors.white70,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: Padding(
                        padding: EdgeInsets.only(bottom: 5, top: 30),
                        child: Column(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: _currentIndex == 4
                                    ? Colors.white
                                    : Colors.white70,
                              ),
                              child: Image.asset(
                                'assets/icons/icon31.png',
                              ),
                            ),
                            Text(
                              'خدمات الفحص',
                              style: TextStyle(
                                fontSize: 9,
                                color: _currentIndex == 4
                                    ? Colors.white
                                    : Colors.white70,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      label: '',
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
