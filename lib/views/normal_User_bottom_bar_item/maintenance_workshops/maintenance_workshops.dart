import 'package:flutter/material.dart';

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
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'ورش الصيانة',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color(0xFF4C5264)),
          ),
          leading: SizedBox(),
          elevation: 0.0,
          backgroundColor: Color(0xFFF8F8F8),
          toolbarHeight: 60,
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
                        onTap: () {},
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
                                fontSize: 14,
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
                  Image.asset('assets/icons/icon26.png'),
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
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (_, i) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: Colors.grey.withOpacity(0.1),
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
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
