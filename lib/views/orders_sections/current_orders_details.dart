import 'package:flutter/material.dart';
import 'package:muharek_app/shared/components/component.dart';

class CurrentOrdersDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: ListView(
            children: [
              Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  color: Color(0xFFF8F8F8),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/image23.png',
                      width: 70,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12, right: 12),
                      child: Text(
                        'الكابتن سيصلك في خلال 30 دقيقة',
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xFF4C5264),
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: double.infinity,
                height: 140,
                decoration: BoxDecoration(
                  color: Color(0xFF555555),
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Image.asset('assets/icons/icon8.png',height: 25,width: 35,),
                        Container(
                          height: 1,
                          width: MediaQuery.of(context).size.width* 0.2,
                          color: Colors.green,
                        ),
                        Image.asset('assets/icons/icon3.png',height: 25,width: 35,),
                        Container(
                          height: 1,
                          width: MediaQuery.of(context).size.width* 0.18,
                          color: Colors.grey,
                        ),
                        Image.asset('assets/icons/icon3.png',height: 25,width: 35,),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'الكابتن استقبل \n الطلب',
                          style: TextStyle(fontSize: 8, color: Colors.white),
                        ),
                        Text(
                          'الكابتن جاى لك \n في الطريق',
                          style: TextStyle(fontSize: 8, color: Colors.white),
                        ),
                        Text(
                          'تم المطلوب',
                          style: TextStyle(fontSize: 8, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  'تفاصيل الكابتن',
                  style: TextStyle(fontSize: 15, color: Color(0xFF707070)),
                ),
              ),
              Stack(
                children: [
                  Container(
                    height: 190,
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                      height: 165,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: Color(0xFFF8F8F8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'محمد إبراهيم محمد على عبد اللطيف',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFF555555)),
                          ),
                          Text(
                            'كابتن فحص',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFFA2A2A2)),
                          ),
                          defaultButton(
                            text: 'محادثة',
                            color: Color(0xFF0BC500),
                            function: () {

                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      padding: EdgeInsets.all(7),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFFF8F8F8),
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Image.asset(
                        'assets/icons/icon41.png',
                        color: Color(0xFF1C608D),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  'مكان السيارة',
                  style: TextStyle(fontSize: 15, color: Color(0xFF707070)),
                ),
              ),
              Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  color: Color(0xFFF8F8F8),
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.location_on_outlined,
                      color: Color(0xFF3192D9),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'يكتب عنوان السيارة هنا',
                      style: TextStyle(fontSize: 14, color: Color(0xFF4C5264)),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  'طريقة الدفع',
                  style: TextStyle(fontSize: 15, color: Color(0xFF707070)),
                ),
              ),
              Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  color: Color(0xFFF8F8F8),
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/icons/icon50.png',
                      height: 30,
                      width: 30,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'الدفع نقدا',
                      style: TextStyle(fontSize: 14, color: Color(0xFF4C5264)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  'نوع وتكلفة الخدمة',
                  style: TextStyle(fontSize: 15, color: Color(0xFF707070)),
                ),
              ),
              Container(
                width: double.infinity,
                height: 140,
                decoration: BoxDecoration(
                  color: Color(0xFFF8F8F8),
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 25, right: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Text(
                            'تكلفة فحص الكمبيوتر',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xFF4C5264)),
                          ),
                          Spacer(),
                          Text(
                            '‏150 ريال',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xFF4C5264)),
                          ),
                        ],
                      ),
                      Container(
                        height: 1,
                        width: double.infinity,
                        color: Colors.grey,
                      ),
                      Row(
                        children: [
                          Text(
                            'الاجمالى',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xFF4C5264)),
                          ),
                          Spacer(),
                          Text(
                            '‏150 ريال',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xFF4C5264)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30,right: 30),
                child: defaultButton(
                  text: 'الغاء الطلب',
                  color: Color(0xFFFF5A5A),
                  function: () {},
                ),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        'رقم الطلب 25452154',
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
