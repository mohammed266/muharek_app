import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:muharek_app/shared/components/component.dart';
import 'package:muharek_app/views/checking_service_details/checking_service_details.dart';
import 'package:muharek_app/views/offers_from_workshop/workshop_offers.dart';
import 'package:muharek_app/views/screening_service_details/screening_service_details.dart';

class WorkshopOwnerScreen extends StatefulWidget {
  @override
  _WorkshopOwnerScreenState createState() => _WorkshopOwnerScreenState();
}

class _WorkshopOwnerScreenState extends State<WorkshopOwnerScreen> {
  bool screeningServices = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(context),
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Container(
                width: double.infinity,
                height: 170,
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
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: InkWell(
                          onTap: () {
                            print('kk');
                          },
                          child: Container(
                            height: 35,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              color: Colors.green,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  'assets/icons/icon17.png',
                                  color: Colors.white,
                                ),
                                Text(
                                  'محادثة',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
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
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/icons/icon26.png'),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'ورشة فهد بلال لفحص وصيانة السيارات',
                                style: TextStyle(
                                    fontSize: 11, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/icons/icon40.png',
                                width: 18,
                                height: 16,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'الرياض',
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xFF4C5264)),
                              ),
                              SizedBox(width: 5),
                              Text(
                                '50.00km',
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xFF4C5264)),
                              ),
                              SizedBox(width: 5),
                              if (screeningServices)
                                Icon(
                                  Icons.watch_later_outlined,
                                  color: Color(0xFF3192D9),
                                  size: 15,
                                ),
                              SizedBox(width: 5),
                              if (screeningServices)
                                Text(
                                  '09 am : 09 pm',
                                  style: TextStyle(
                                      fontSize: 10, color: Color(0xFF4C5264)),
                                ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/icons/icon40.png',
                                width: 18,
                                height: 16,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'الخرج-طريق الملك فهد بجوار البنك الاهلى التجارى',
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xFF4C5264)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width * 0.23,
                      decoration: BoxDecoration(
                        color: Color(0xFF1C608D),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: screeningServices
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.place_outlined,
                                  color: Colors.white,
                                  size: 29,
                                ),
                                Text(
                                  'العنوان',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.place_outlined,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                Text(
                                  'الخريطة',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TitleContainer(
              image: 'assets/icons/icon39.png',
              text: 'عروض الورشة',
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (_, i) => Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.4,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        image: DecorationImage(
                          image: AssetImage('assets/images/image9.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: Color(0xFF000000).withOpacity(0.5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset('assets/icons/icon33.png'),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'ورشة أبو مازن (الرياض)',
                                        style: TextStyle(
                                            fontSize: 8, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'فحص شامل على كامل السيارة \n ب300 ريال',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) =>
                                              OffersFromWorkshopScreen(),
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
                                        color: Colors.white,
                                      ),
                                      child: Center(
                                        child: Text(
                                          'احجز الان',
                                          style: TextStyle(
                                            color: Color(0xFF2777B2),
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 70,
                                  width:
                                      MediaQuery.of(context).size.width / 4.5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(80),
                                      topLeft: Radius.circular(17),
                                    ),
                                    color: Color(0xFF1C608D),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 10),
                                    child: Text(
                                      'من 20 الى \n 27 ديسمبر',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TitleContainer(
              image: 'assets/icons/icon26.png',
              text: 'خدمات الورشة',
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Color(0xFFCCCCCC),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            screeningServices = true;
                          });
                        },
                        child: Container(
                          child: Center(
                            child: Text(
                              'خدمات الفحص',
                              style: TextStyle(
                                color: screeningServices
                                    ? Color(0xFF3192D9)
                                    : Color(0xFFA2A2A2),
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 2,
                      height: 35,
                      color: Color(0xFFCCCCCC),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            screeningServices = false;
                          });
                        },
                        child: Container(
                          child: Center(
                            child: Text(
                              'خدمات الصيانة',
                              style: TextStyle(
                                color: screeningServices
                                    ? Color(0xFFA2A2A2)
                                    : Color(0xFF3192D9),
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
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
            screeningServices
                ? Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            WorkshopContainer(
                              title: 'فحص كمبيوتر',
                              image: 'assets/icons/icon4.png',
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) =>
                                        ScreeningServiceDetailsScreen(),
                                  ),
                                );
                              },
                            ),
                            Spacer(),
                            WorkshopContainer(
                              title: 'فحص هيكل',
                              image: 'assets/icons/icon5.png',
                              onTap: () {
                                print('pp');
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            WorkshopContainer(
                              title: 'فحص محرك',
                              image: 'assets/icons/icon6.png',
                              onTap: () {
                                print('pp');
                              },
                            ),
                            Spacer(),
                            WorkshopContainer(
                              title: 'فحص شامل',
                              image: 'assets/icons/icon7.png',
                              onTap: () {
                                print('pp');
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 6,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 2 / 2,
                      ),
                      itemBuilder: (_, i) => InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => CheckingServiceDetailsScreen(),
                            ),
                          );
                        },
                        child: Container(
                          // height: 150,
                          // width: MediaQuery.of(context).size.width / 2.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            border: Border.all(color: Color(0xFFDCDCDC)),
                            color: Color(0xFFFCFCFC),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xFF17557E)),
                                  borderRadius: BorderRadius.circular(35),
                                ),
                                child: Center(
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/icons/icon9.png'),
                                    child: Padding(
                                      padding: EdgeInsets.all(6.0),
                                      child: Image.asset(
                                          'assets/icons/icon41.png'),
                                    ),
                                    radius: 20,
                                  ),
                                ),
                              ),
                              Text(
                                'اسم الخدمة',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF4C5264),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
            SizedBox(
              height: 20,
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
        'ورشة فهد بلال',
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
