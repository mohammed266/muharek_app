import 'package:flutter/material.dart';
import '../offer_details/offer_details.dart';

class AllWorkshopOffersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (_, i) => Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.275,
                // 150,
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
                                Image.asset('assets/icons/icon33.png',
                                  height: 19,
                                  width: 19,
                                ),
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
                                Navigator.push(context,
                                  MaterialPageRoute(builder: (_) =>
                                      OfferDetailScreen(),
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
                                      fontSize: 12,
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
                            height:  MediaQuery.of(context).size.height* 0.12,
                            // 70,
                            width: MediaQuery.of(context).size.width / 4.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(80),
                                topLeft: Radius.circular(17),
                              ),
                              color: Color(0xFF1C608D),
                            ),
                            child: Padding(
                              padding:
                              const EdgeInsets.only(right: 25, top: 10),
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
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
        centerTitle: true,
        title: Text(
          'عروض الورش',
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
