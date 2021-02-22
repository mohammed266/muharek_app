import 'package:flutter/material.dart';
import '../../order_details/order_details.dart';

class OrdersScreen extends StatefulWidget {
  @override
  _OrdersScreenState createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  bool _ongoingOrders = true;

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
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    border: Border.all(color: Color(0xFFCCCCCC)),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _ongoingOrders = true;
                          });
                        },
                        child: Text(
                          'الطلبات الجارية',
                          style: TextStyle(
                            fontSize: 12,
                            color: _ongoingOrders
                                ? Color(0xFF3192D9)
                                : Color(0xFFA2A2A2),
                          ),
                        ),
                      ),
                      Container(
                        height: 25,
                        width: 1,
                        color: Color(0xFFCCCCCC),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _ongoingOrders = false;
                          });
                        },
                        child: Text(
                          'الطلبات المنتهية',
                          style: TextStyle(
                            fontSize: 12,
                            color: _ongoingOrders
                                ? Color(0xFFA2A2A2)
                                : Color(0xFF3192D9),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                _ongoingOrders
                 ? ListView.builder(
                   shrinkWrap: true,
                   physics: NeverScrollableScrollPhysics(),
                   itemCount: 5,
                   itemBuilder: (_, i) => Padding(
                     padding: EdgeInsets.only(bottom: 10),
                     child: Container(
                       height: 100,
                       width: double.infinity,
                       decoration: BoxDecoration(
                         border: Border.all(color: Color(0xFFDCDCDC)),
                         borderRadius: BorderRadius.circular(10),
                       ),
                       child: Column(
                         children: [
                           Container(
                             padding: EdgeInsets.only(left: 30, right: 20),
                             width: double.infinity,
                             height: 37,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.only(
                                 topRight: Radius.circular(10),
                                 topLeft: Radius.circular(10),
                               ),
                               color: Color(0xFFFCFCFC),
                             ),
                             child: Row(
                               children: [
                                 Text(
                                   '(طلب رقم 2154658497)',
                                   style: TextStyle(
                                       fontSize: 10, color: Color(0xFF2B2F3B)),
                                 ),
                                 Spacer(),
                                 Text(
                                   '‏15 يناير',
                                   style: TextStyle(
                                       fontSize: 10, color: Color(0xFFBFBFBF)),
                                 ),
                               ],
                             ),
                           ),
                           Divider(
                             height: 1,
                             color: Color(0xFFDCDCDC),
                           ),
                           Padding(
                             padding: EdgeInsets.only(left: 30, right: 20),
                             child: Row(
                               children: [
                                 Image.asset(
                                   'assets/images/image28.png',
                                   height: 50,
                                   width: 50,
                                 ),
                                 Spacer(),
                                 Text(
                                   'خدمة فحص كميوتر',
                                   style: TextStyle(
                                       fontSize: 12, color: Color(0xFF3192D9)),
                                 ),
                                 Spacer(),
                                 Text(
                                   'قيد الاجراء',
                                   style: TextStyle(
                                       fontSize: 12, color: Color(0xFF555555)),
                                 ),
                               ],
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                 )
                 : ListView.builder(
                   shrinkWrap: true,
                   physics: NeverScrollableScrollPhysics(),
                   itemCount: 3,
                   itemBuilder: (_, i) => Padding(
                     padding: EdgeInsets.only(bottom: 10),
                     child: InkWell(
                       onTap: (){
                         Navigator.push(context,
                           MaterialPageRoute(
                             builder: (_) => OrderDetailsScreen(),
                           ),
                         );
                       },
                       child: Container(
                         height: 100,
                         width: double.infinity,
                         decoration: BoxDecoration(
                           border: Border.all(color: Color(0xFFDCDCDC)),
                           borderRadius: BorderRadius.circular(10),
                         ),
                         child: Column(
                           children: [
                             Container(
                               padding: EdgeInsets.only(left: 30, right: 20),
                               width: double.infinity,
                               height: 37,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.only(
                                   topRight: Radius.circular(10),
                                   topLeft: Radius.circular(10),
                                 ),
                                 color: Color(0xFFFCFCFC),
                               ),
                               child: Row(
                                 children: [
                                   Text(
                                     '(طلب رقم 2154658497)',
                                     style: TextStyle(
                                         fontSize: 10, color: Color(0xFF2B2F3B)),
                                   ),
                                   Spacer(),
                                   Text(
                                     '‏15 يناير',
                                     style: TextStyle(
                                         fontSize: 10, color: Color(0xFFBFBFBF)),
                                   ),
                                 ],
                               ),
                             ),
                             Divider(
                               height: 1,
                               color: Color(0xFFDCDCDC),
                             ),
                             Padding(
                               padding: EdgeInsets.only(left: 30, right: 20),
                               child: Row(
                                 children: [
                                   Image.asset(
                                     'assets/images/image28.png',
                                     height: 50,
                                     width: 50,
                                   ),
                                   Spacer(),
                                   Text(
                                     'خدمة فحص كميوتر',
                                     style: TextStyle(
                                         fontSize: 12, color: Color(0xFF3192D9)),
                                   ),
                                   Spacer(),
                                   Text(
                                     'تم الالغاء',
                                     style: TextStyle(
                                         fontSize: 12, color: Color(0xFF555555)),
                                   ),
                                 ],
                               ),
                             ),
                           ],
                         ),
                       ),
                     ),
                   ),
                 ),
                SizedBox(
                  height: 10,
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
        'الطلبات',
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
