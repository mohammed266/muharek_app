import 'package:flutter/material.dart';
import '../../report_time/report_time.dart';
import '../../../drawer_item/pay_commission/pay_commission.dart';

class FinancialMovementsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  width: double.infinity,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Color(0xFFFCFCFC),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icons/icon58.png',
                        height: 15,
                        width: 14,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'جميع التواريخ',
                        style:
                            TextStyle(fontSize: 13, color: Color(0xFF2B2F3B)),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: (){
                          Navigator.push(context,
                            MaterialPageRoute(builder: (_) => ReportTimeScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'تغير',
                          style:
                              TextStyle(fontSize: 15, color: Color(0xFF3192D9)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 140,
                        decoration: BoxDecoration(
                          color: Color(0xFFF8F8F8),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'مدفوع',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xFF3192D9)),
                            ),
                            Text(
                              '‏500 ريال',
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xFF0BC500)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Expanded(
                      child: Container(
                        height: 140,
                        decoration: BoxDecoration(
                          color: Color(0xFFF8F8F8),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'دين',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xFF3192D9)),
                            ),
                            Text(
                              '‏130 ريال',
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xFFFF5A5A)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  width: double.infinity,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Color(0xFF1C608D),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'الرصيد',
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      ),
                      Spacer(),
                      Text(
                        '‏1300 ريال',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (_, i) => Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Container(
                      padding: EdgeInsets.only(left: 15,right: 15),
                      width: double.infinity,
                      height: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFFCFCFC),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/icons/icon50.png',
                            height: 30,
                            width: 30,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                '#الطلب رقم 7571130670',
                                style: TextStyle(fontSize: 12,color: Color(0xFF2777B2)),
                              ),
                              Text(
                                'خدمة فحص الكترونى',
                                style: TextStyle(fontSize: 10,color: Color(0xFFA5A5A5)),
                              ),
                              Row(
                                children: [
                                  Text('16/6/2020', style: TextStyle(fontSize: 10,color: Color(0xFFA5A5A5)),),
                                  SizedBox(
                                    width: 14,
                                  ),
                                  Text('‏7:19 ص', style: TextStyle(fontSize: 10,color: Color(0xFFA5A5A5)),),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          Text(
                            'SR 150',
                            style: TextStyle(fontSize: 15,color: Color(0xFF0BC500)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => PayCommissionScreen(),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    width: double.infinity,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Color(0xFF1C608D),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        '‏ادفع العمولة',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
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
        'الحركات المالية',
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
