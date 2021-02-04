import 'package:flutter/material.dart';

class PreviousTicketsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            children: [
              ListView.builder(
                itemCount: 2,
                shrinkWrap: true,
                itemBuilder: (_, index) => Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Color(0xFFF8F8F8),
                    ),
                    child: ListTile(
                      onTap: (){

                      },
                      title: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'استفسار-خدمات صيانة',
                          style:
                              TextStyle(fontSize: 14, color: Color(0xFF3192D9)),
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'هل يمكن الدفع نقدا بعد اجراء الخدمة',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xFFA2A2A2)),
                          ),
                          Text(
                            '20/12/2020 03:42 pm',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFFA2A2A2)),
                          ),
                        ],
                      ),
                      trailing: Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF3192D9),
                        ),
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

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        'التذاكر السابقة',
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
