import 'package:flutter/material.dart';
import '../home/components/drawer_list.dart';
import '../../all_workshop_offers/all_workshop_offers.dart';
import '../../normal_user_home/normal_user_home_screen.dart';
import '../../owner_workshop/workshop_owner.dart';

class MaintenanceWorkshopsScreen extends StatefulWidget {
  @override
  _MaintenanceWorkshopsScreenState createState() =>
      _MaintenanceWorkshopsScreenState();
}

class _MaintenanceWorkshopsScreenState
    extends State<MaintenanceWorkshopsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: drawerList(context),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
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
          actions: [
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    // _showDialog();
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
          // Column(
          //   children: [
          //     SizedBox(
          //       height: 13,
          //     ),
          //     InkWell(
          //       onTap: () {
          //         // Navigator.of(context).pop();
          //         Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen(),),);
          //       },
          //       child: Container(
          //         width: 36,
          //         height: 36,
          //         decoration: BoxDecoration(
          //           color: Colors.white,
          //           borderRadius: BorderRadius.circular(8),
          //         ),
          //         child: Center(
          //           child: Icon(
          //             Icons.arrow_back,
          //             color: Color(0xFF4C5264),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          elevation: 0.0,
          backgroundColor: Color(0xFFF8F8F8),
          toolbarHeight: 70,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  image: DecorationImage(
                    image: AssetImage('assets/images/image10.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Color(0xFF000000).withOpacity(0.45),
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'تصفح اخر عروض \n الورش',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                            MaterialPageRoute(builder: (_) =>
                                AllWorkshopOffersScreen(),
                            ),
                          );
                        },
                        child: Container(
                          height: 30,
                          width: 85,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            border: Border.all(color: Colors.white),
                          ),
                          child: Center(
                            child: Text(
                              'تصفح الخدمات',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/icon26.png',
                    height: 16,
                    width: 16,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 7, right: 7),
                    child: Text(
                      'ورش الصيانة',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF555555),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Text(
                    '(الرياض)',
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF2777B2),
                        fontWeight: FontWeight.w400),
                  ),
                  Spacer(),
                  Text(
                    '(50)',
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF2777B2),
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 5,
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                ),
                itemBuilder: (_, i) => InkWell(
                  onTap: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (_) =>
                          WorkshopOwnerScreen(),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 4,
                    shadowColor: Color(0xFFBFBFBF).withOpacity(.1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/image6.png',
                          fit: BoxFit.fill,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'ورشة فهد بلال',
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xFF2777B2),
                          ),
                        ),
                        Text(
                          'الرياض',
                          style: TextStyle(
                            color: Color(0xFF555555),
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
