import 'package:flutter/material.dart';
import 'package:muharek_app/shared/components/component.dart';
import 'package:muharek_app/views/drawer_item/technical_support/technical_support.dart';

class NewTicketScreen extends StatefulWidget {
  @override
  _NewTicketScreenState createState() => _NewTicketScreenState();
}

class _NewTicketScreenState extends State<NewTicketScreen> {
  List<String> rating = ['A', 'B', 'C', 'D'];
  List<String> type = ['A', 'B', 'C', 'D'];

  String _newRating;
  String _newType;

  // Future<void> _showDialog() async {
  //   return showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //         Future.delayed(Duration(seconds: 2), () {
  //           Navigator.of(context).push(MaterialPageRoute(builder: (_) => TechnicalSupportScreen()));
  //         });
  //       return Column(
  //         children: [
  //           SizedBox(height: MediaQuery.of(context).size.height * .2),
  //           Container(
  //             height: MediaQuery.of(context).size.height * 0.6,
  //             width: double.infinity,
  //             child: Dialog(
  //               shape: RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.circular(17),
  //               ),
  //               insetPadding: EdgeInsets.only(
  //                 bottom: 10,
  //                 right: 20,
  //                 left: 20,
  //               ),
  //               child: Column(
  //                 children: [
  //                   SizedBox(
  //                     height: 20,
  //                   ),
  //                   Spacer(),
  //                   Image.asset('assets/images/image16.png'),
  //                   SizedBox(
  //                     height: 7,
  //                   ),
  //                   Text(
  //                     'تم ارسال التذكرة',
  //                     style: TextStyle(
  //                       fontSize: 25,
  //                       color: Color(0xFF707070),
  //                     ),
  //                     textAlign: TextAlign.center,
  //                   ),
  //                   Spacer(),
  //                   SizedBox(
  //                     height: 30,
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }
  Future<void> _showDialog() async {
    return showDialog(
      context: context,
      builder: (context) {
        Future.delayed(Duration(seconds: 2), () {
           Navigator.of(context).pop();
        });
        return Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * .2),
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: double.infinity,
              child: Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17),
                ),
                insetPadding: EdgeInsets.only(
                  bottom: 10,
                  right: 20,
                  left: 20,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Spacer(),
                    Image.asset('assets/images/image16.png'),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      'تم ارسال التذكرة',
                      style: TextStyle(
                        fontSize: 25,
                        color: Color(0xFF707070),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Spacer(),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(left: 20,right: 20,top: 20),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 15,right: 15),
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Color(0xFFF8F8F8),
                ),
                child: DropdownButton<String>(
                  items: rating.map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      _newRating = newValue;
                    });
                  },
                  value: _newRating,
                  isExpanded: true,
                  hint: Text(
                    'تصنيف التذكرة',
                    style: TextStyle(fontSize: 12, color: Color(0xFFBFBFBF)),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 15,right: 15),
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Color(0xFFF8F8F8),
                ),
                child: DropdownButton<String>(
                  items: type.map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      _newType = newValue;
                    });
                  },
                  value: _newType,
                  isExpanded: true,
                  hint: Text(
                    'نوع التذكرة',
                    style: TextStyle(fontSize: 12, color: Color(0xFFBFBFBF)),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 15,right: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Color(0xFFF8F8F8),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    border: InputBorder.none,
                    hintText: 'الرسالة',
                    hintStyle: TextStyle(
                      fontSize: 12,
                      color: Color(0xFFBFBFBF),
                    ),
                  ),
                  maxLines: 4,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              defaultButton(
                text: 'ارسال',
                color: Color(0xFF3192D9),
                function: (){
                  _showDialog();
                },
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
