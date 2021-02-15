import 'package:flutter/material.dart';

class AlertsRepScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: ListView.builder(
            itemCount: 8,
            itemBuilder: (_, i) => Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Container(
                width: double.infinity,
                height: 75,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFDCDCDC)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  title: Text(
                    'عنوان التنبية',
                    style: TextStyle(fontSize: 10, color: Color(0xFF707070)),
                  ),
                  subtitle: Text(
                    'تفاصيل التنبية تكتب هنا',
                    style: TextStyle(fontSize: 10, color: Color(0xFFA2A2A2)),
                  ),
                  leading: Container(
                    height: 50,
                    width: 50,
                    child: Image.asset('assets/images/image23.png'),
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
        'التنبيهات',
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
