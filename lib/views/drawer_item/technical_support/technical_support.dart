import 'package:flutter/material.dart';
import 'tickets/open_new_ticket.dart';
import 'tickets/previous_tickets.dart';

class TechnicalSupportScreen extends StatelessWidget {
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
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Color(0xFFF8F8F8),
                ),
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => NewTicketScreen(),
                      ),
                    );
                  },
                  leading: CircleAvatar(
                    radius: 11,
                    backgroundColor: Colors.white,
                    child: Center(
                        child: Icon(
                      Icons.add,
                      size: 16,
                      color: Colors.black26,
                    )),
                  ),
                  title: Text(
                    'فتح تذكرة جديدة',
                    style: TextStyle(fontSize: 14),
                  ),
                  trailing: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => PreviousTicketsScreen(),
                        ),
                      );
                    },
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 17,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Color(0xFFF8F8F8),
                ),
                child: ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => PreviousTicketsScreen(), ),);
                  },
                  leading: CircleAvatar(
                    radius: 11,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.forward_10,
                      size: 15,
                      color: Colors.black26,
                    ),
                  ),
                  title: Text(
                    'التذاكر السابقة',
                    style: TextStyle(fontSize: 14),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 17,
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
        'الدعم الفنى',
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
