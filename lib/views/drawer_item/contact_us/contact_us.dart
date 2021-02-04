import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFCFCFC),
        appBar: buildAppBar(context),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 20,right: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                  width: double.infinity,
                ),
                Image.asset(
                  'assets/icons/logo1.png',
                  height: 120,
                  width: 90,
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  padding: EdgeInsets.only(top: 50),
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: Column(
                    children: [
                      Text('رقم الهاتف: 9617548563215',
                        style: TextStyle(fontSize: 15,color: Color(0xFF2B2F3B)),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('البريد الالكترونى:',
                            style: TextStyle(fontSize: 15,color: Color(0xFF2B2F3B)),
                          ),
                          Text('mail@company.com',
                            style: TextStyle(fontSize: 15,color: Color(0xFF2B2F3B)),
                          ),
                        ],
                      ),
                      Text('الموقع : السعودية - باقي العنوان يكتب هنا',
                        style: TextStyle(fontSize: 15,color: Color(0xFF2B2F3B)),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Container(
                        height: 1,
                        width: 100,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/icons/icon55.png',height: 30,width: 30,),
                          Image.asset('assets/icons/icon56.png',height: 30,width: 30,),
                          Image.asset('assets/icons/icon57.png',height: 30,width: 30,),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
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
        'تواصل معنا',
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
