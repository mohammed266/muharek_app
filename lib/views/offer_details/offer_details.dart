import 'package:flutter/material.dart';
import '../../shared/components/component.dart';
import '../offers_from_workshop/workshop_offers.dart';

class OfferDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(context),
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
                              Icon(
                                Icons.watch_later_outlined,
                                color: Color(0xFF3192D9),
                                size: 15,
                              ),
                              SizedBox(width: 5),
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
                      child:  Column(
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
              text: 'تفاصيل العرض',
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Text('ومن هنا وجب على المصمم أن يضع نصوصا مؤقتة على التصميم ليظهر للعميل الشكل كاملاً،دور مولد النص العربى أن يوفر على المصمم عناء البحث عن نص بديل لا علاقة له بالموضوع الذى يتحدث عنه التصميم فيظهر بشكل لا يليق. هذا النص يمكن أن يتم تركيبه على أي تصميم دون مشكلة فلن يبدو وكأنه نص منسوخ، غير منظم، غير منسق، أو حتى غير مفهوم. لأنه مازال نصاً بديلاً ومؤقتاً.',
                style: TextStyle(fontSize: 14,),
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TitleContainer(
              image: 'assets/icons/icon39.png',
              text: 'السعر',
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Text('‏300 ريال',style: TextStyle(fontSize: 14,),),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 60,right: 60),
              child: defaultButton(
                text: 'استفد من العرض',
                color: Color(0xFF1C608D),
                function: () {
                  Navigator.push(context,
                    MaterialPageRoute(
                    builder: (_)=>
                        OffersFromWorkshopScreen(),
                    ),
                  );
                },
              ),
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
        'فحص شامل على كامل السيارة',
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
