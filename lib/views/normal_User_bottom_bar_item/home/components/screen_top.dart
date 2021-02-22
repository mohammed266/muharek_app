import 'package:flutter/material.dart';
import 'service_title.dart';
import '../../../owner_workshop/workshop_owner.dart';

class ScreenTop extends StatefulWidget {
  @override
  _ScreenTopState createState() => _ScreenTopState();
}

class _ScreenTopState extends State<ScreenTop> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ServiceList(
                  image: 'assets/images/image6.png',
                  title: 'خدمات البيع \nوالشراء',
                  onTap: () {
                    print('ee');
                  },
                ),
                SizedBox(
                  width: 15,
                ),
                ServiceList(
                  image: 'assets/images/image7.png',
                  title: 'خدمات الورش \nوحجز الصيانة',
                  onTap: () {
                    print('hh');
                  },
                ),
                SizedBox(
                  width: 15,
                ),
                ServiceList(
                  image: 'assets/images/image8.png',
                  title: 'خدمات الفحص \nفي المكان',
                  onTap: () {
                    print('ii');
                  },
                ),
              ],
            ),
          ),
        ),
        ServiceTitle(
          image: 'assets/icons/icon26.png',
          title: 'اخر ورش الصيانة المضافة',
          place: '(الرياض)',
          allService: 'كل الورش',
          onTap: () {
            // Navigator.push(context, MaterialPageRoute(
            //   builder: (_)=> MaintenanceWorkshopsScreen(),
            // ),
            // );
          },
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height* 0.26,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (_, i) => Padding(
              padding: EdgeInsets.only(left: 5),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => WorkshopOwnerScreen(),
                    ),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 2,
                  // height: 140,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(17),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Color(0xFFBFBFBF).withOpacity(.1),
                    //     offset: Offset(-5,5),
                    //     blurRadius: 5,
                    //     spreadRadius: 2,
                    //     // spreadRadius: 5,
                    //   ),
                    // ],
                  ),
                  child: Card(
                    elevation: 4,
                    shadowColor: Color(0xFFBFBFBF).withOpacity(.1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * .15,
                            width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(17),
                                topRight: Radius.circular(17),
                              ),
                              image: DecorationImage(
                                image: AssetImage('assets/images/image6.png',),
                                fit: BoxFit.fill,
                              ),
                            ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'ورشة فهد بلال',
                          style: TextStyle(
                              color: Color(0xFF2777B2),
                              fontSize: 10,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'الرياض',
                          style: TextStyle(
                            color: Color(0xFF555555),
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ServiceList extends StatelessWidget {
  const ServiceList({
    Key key,
    this.image,
    this.title,
    this.onTap,
  }) : super(key: key);

  final String image, title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.4,
      height: 150,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(17),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: Color(0xFF000000).withOpacity(0.5),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              SizedBox(
                height: 3,
              ),
              InkWell(
                onTap: onTap,
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
    );
  }
}
