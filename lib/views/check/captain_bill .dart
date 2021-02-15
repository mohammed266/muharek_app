import 'package:flutter/material.dart';
import '../../shared/components/component.dart';

class CaptainBillScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(context),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Color(0xFFF8F8F8),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(17),
                        bottomRight: Radius.circular(17),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20,right: 20,top: 10),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      width: double.infinity,
                      height:
                      // 680,
                      MediaQuery.of(context).size.height * 1.43,
                      decoration: BoxDecoration(
                        color: Color(0xFFFCFCFC),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'طلب رقم',
                                style: TextStyle(
                                    fontSize: 15, color: Color(0xFF3192D9)),
                              ),
                              Spacer(),
                              Text(
                                '201546542',
                                style: TextStyle(
                                    fontSize: 15, color: Color(0xFF2B2F3B)),
                              ),
                            ],
                          ),
                          buildPadding(),
                          Details(
                            title: 'التاريخ',
                            text: 'الثلاثاء 15 يناير 2021',
                          ),
                          buildPadding(),
                          Details(
                            title: 'الوقت',
                            text: '11:00 am',
                          ),
                          buildPadding(),
                          Details(
                            title: 'نوع الدفع:',
                            text: 'الكترونى',
                          ),
                          buildPadding(),
                          Details(
                            title: 'اسم الخدمة',
                            text: 'فحص كمبيوتر',
                          ),
                          buildPadding(),
                          Details(
                            title: 'اسم كابتن الفحص',
                            text: 'الاسم يكتب هنا',
                          ),
                          buildPadding(),
                          Details(
                            title: 'مكان الفحص',
                            text: 'الرياض',
                          ),
                          buildPadding(),
                          Details(
                            title: 'تكلفة فحص الكمبيوتر',
                            text: '‏150 ريال',
                          ),
                          buildPadding(),
                          Details(
                            title: 'الضريبة',
                            text: '‏0 ريال',
                          ),
                          buildPadding(),
                          Details(
                            title: 'حالة الطلب',
                            text: 'تم الالغاء',
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20,right: 20),
                            child: defaultButton(
                              color: Color(0xFF1C608D),
                              function: (){},
                              text: 'حفظ',
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildPadding() {
    return Padding(
      padding: EdgeInsets.only(top: 20, bottom: 20),
      child: Divider(
        color: Color(0xFFF8F8F8),
        height: 1.5,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        'فاتورة',
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
