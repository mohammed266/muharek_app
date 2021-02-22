import 'package:flutter/material.dart';
import '../../shared/components/component.dart';
import '../screening_service_after_choice/screening_service_after_choice.dart';


class CheckScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(left: 20,right: 20,top: 26),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
              ),
              Text('طلب رقم 201546542',
                style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF3192D9),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text('التاريخ / الثلاثاء 15 يناير 2021',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF707070),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text('11:00 am',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFFBFBFBF),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(left: 30,right: 30),
                child: defaultButton(
                  text: 'تأكيد',
                  color: Color(0xFF1C608D),
                  function: (){
                    Navigator.push(context,
                      MaterialPageRoute(
                        builder: (_) => ScreeningServiceAfterChoice(),
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
