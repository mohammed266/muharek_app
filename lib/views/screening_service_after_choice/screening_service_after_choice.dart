import 'package:flutter/material.dart';
import '../../shared/components/component.dart';
import '../add_new_car/add_new_car.dart';
import '../add_new_card/add_new_card.dart';
import '../order_details/order_details.dart';
import '../tabular_order/tabular_order.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:avatar_glow/avatar_glow.dart';

class ScreeningServiceAfterChoice extends StatefulWidget {
  @override
  _ScreeningServiceAfterChoiceState createState() =>
      _ScreeningServiceAfterChoiceState();
}

class _ScreeningServiceAfterChoiceState
    extends State<ScreeningServiceAfterChoice> {
  final LatLng _center = const LatLng(31.037933, 31.381523);
  final List _city = [
    {
      'name': 'الخبر',
    },
    {
      'name': 'الرياض',
    },
    {
      'name': 'المدينة',
    },
  ];

  @override
  void initState() {
    createVariables();
    super.initState();
  }

  List<bool> citySelectedList = [];
  createVariables() {
    citySelectedList = List.generate(_city.length, (i) => false);
  }

  Future<void> _showDialog() async {
    return showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Container(
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Dialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Color(0xFFFFFFFF),
                    insetPadding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 20,
                      bottom: MediaQuery.of(context).size.height / 20,
                      right: 10,
                      left: 10,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 19,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'عناوينى',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFF2777B2),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.close,
                                  color: Color(0xFF2777B2),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: ListView.builder(
                            itemCount: _city.length,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (_, i) => Padding(
                              padding: EdgeInsets.only(bottom: 8),
                              child: Container(
                                height: 40,
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.only(right: 20),
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF8F8F8),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Row(
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                setState(
                                                  () {
                                                    createVariables();
                                                    citySelectedList[i] = true;
                                                  },
                                                );
                                              },
                                              child: Container(
                                                padding: EdgeInsets.all(3),
                                                height: 20,
                                                width: 20,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                    width: 1.3,
                                                    color: citySelectedList[i]
                                                        ? Color(0xFF2777B2)
                                                        : Color(0xFFBFBFBF),
                                                  ),
                                                ),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: citySelectedList[i]
                                                        ? Color(0xFF2777B2)
                                                        : Color(0xFFBFBFBF),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              '${_city[i]['name']}',
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    InkWell(
                                      onTap: () {
                                          // _city.removeAt(i);
                                        Navigator.pop(context);
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return Container(
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 10, right: 10),
                                                child: Column(
                                                  children: [
                                                    SizedBox(height: 120),
                                                    Dialog(
                                                      shape:
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(20),
                                                      ),
                                                      backgroundColor:
                                                      Color(0xFFFFFFFF),
                                                      insetPadding:
                                                      EdgeInsets.only(
                                                        top: MediaQuery.of(
                                                            context)
                                                            .size
                                                            .height /
                                                            20,
                                                        bottom: MediaQuery.of(
                                                            context)
                                                            .size
                                                            .height /
                                                            20,
                                                        right: 10,
                                                        left: 10,
                                                      ),
                                                      child: Column(
                                                        children: [
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Container(
                                                            height: 60,
                                                            width: 60,
                                                            decoration:
                                                            BoxDecoration(
                                                              borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                  30),
                                                              color: Color(
                                                                  0xFFFF5A5A),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 20,
                                                          ),
                                                          Text(
                                                            'متأكد من رغبتك في حذف \n العنوان :اسم العنوان',
                                                            style: TextStyle(
                                                              color:
                                                              Colors.black,
                                                              fontSize: 18,
                                                              fontWeight:
                                                              FontWeight
                                                                  .bold,
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Padding(
                                                            padding:
                                                            EdgeInsets.only(
                                                                left: 15,
                                                                right: 15),
                                                            child: Row(
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                  GestureDetector(
                                                                    onTap: () {
                                                                      Navigator.pop(
                                                                          context);
                                                                      _city.removeAt(
                                                                          i);
                                                                    },
                                                                    child:
                                                                    Container(
                                                                      height:
                                                                      40,
                                                                      decoration:
                                                                      BoxDecoration(
                                                                        borderRadius:
                                                                        BorderRadius.circular(25),
                                                                        color: Color(
                                                                            0xFFFF5A5A),
                                                                      ),
                                                                      child: Center(
                                                                          child: Text(
                                                                            'نعم',
                                                                            style:
                                                                            TextStyle(
                                                                              color:
                                                                              Colors.white,
                                                                              fontSize:
                                                                              12,
                                                                            ),
                                                                          )),
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 10,
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                  InkWell(
                                                                    onTap: () {
                                                                      Navigator.of(
                                                                          context)
                                                                          .pop();
                                                                    },
                                                                    child:
                                                                    Container(
                                                                      height:
                                                                      40,
                                                                      decoration:
                                                                      BoxDecoration(
                                                                        borderRadius:
                                                                        BorderRadius.circular(25),
                                                                        border:
                                                                        Border.all(
                                                                          color:
                                                                          Color(0xFF0BC500),
                                                                        ),
                                                                      ),
                                                                      child:
                                                                      Center(
                                                                        child:
                                                                        Text(
                                                                          'لا',
                                                                          style:
                                                                          TextStyle(
                                                                            color:
                                                                            Color(0xFF0BC500),
                                                                            fontSize:
                                                                            12,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: EdgeInsets
                                                                .only(
                                                                top: 50),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF8F8F8),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.delete,
                                            color: Colors.red,
                                            size: 20,
                                          ),
                                        ),
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
                        Padding(
                          padding: EdgeInsets.only(left: 27, right: 15),
                          child: InkWell(
                            onTap: () {
                              print('jjj');
                            },
                            child: Container(
                              padding: EdgeInsets.only(right: 15, left: 15),
                              height: 40,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Color(0xFFF8F8F8),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 22,
                                    width: 22,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      color: Color(0xFF2777B2),
                                      size: 14,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'إضافة عنوان',
                                    style: TextStyle(
                                        fontSize: 15, color: Color(0xFF2777B2)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35, right: 35),
                          child: defaultButton(
                            text: 'تأكيد',
                            function: () {},
                            color: Color(0xFF1C608D),
                            r: 10,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20)),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
  // Future<void> _showDialog2()async{
  //   return showDialog(
  //       context: context,
  //       builder: (context) {
  //         return StatefulBuilder(
  //             builder: (context, setState) {
  //               return Container(
  //                 child: Column(
  //                   children: [
  //                     SizedBox(height: 50),
  //                     Dialog(
  //                       shape: RoundedRectangleBorder(
  //                         borderRadius: BorderRadius.circular(20),
  //                       ),
  //                       backgroundColor: Color(0xFFFFFFFF),
  //                       insetPadding: EdgeInsets.only(
  //                         top: MediaQuery.of(context).size.height / 20,
  //                         bottom: MediaQuery.of(context).size.height / 20,
  //                         right: 10,
  //                         left: 10,
  //                       ),
  //                       child: Column(
  //                         children: [
  //                           FlatButton(
  //                             onPressed: () {
  //
  //                             },
  //                             child: const Text("مسح"),
  //                           ),
  //                           FlatButton(
  //                             onPressed: () => Navigator.of(context).pop(false),
  //                             child: const Text("تراجع"),
  //                           ),
  //                           Padding(padding: EdgeInsets.only(top: 20)),
  //                         ],
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               );
  //             }
  //         );
  //       }
  //   );
  // }
  void _modalBottomSheetMenu() {
    showModalBottomSheet(
        context: context,
        barrierColor: Colors.black26,
        backgroundColor: Color(0xFF00000080),
        builder: (builder) {
          return Container(
            height: 250.0,
            color: Colors.transparent, //could change this to Color(0xFF737373),
            //so you don't have to change MaterialApp canvasColor
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(35.0),
                      topRight: const Radius.circular(35.0))),
              child: Column(
                children: [
                  Container(
                    height: 86,
                    decoration: BoxDecoration(
                        color: Color(0xFF1C608D),
                        borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(35.0),
                            topRight: const Radius.circular(35.0))),
                    width: double.infinity,
                    child: Center(
                        child: Text(
                      'حدد سيارة واحدة',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15, right: 20),
                    child: ListTile(
                      title: Text('CL اكورا 2018'),
                      leading: Image.asset(
                        'assets/icons/icon48.png',
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15, right: 20),
                    child: ListTile(
                      title: Text(
                        'اضف سيارة جديدة',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF4C5264),
                        ),
                      ),
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icons/icon49.png'),
                          ),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Color(0xFF4C5264),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => AddNewCarScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  void _modalBottomSheetMenu1() {
    showModalBottomSheet(
        context: context,
        barrierColor: Colors.black26,
        backgroundColor: Color(0xFF00000080),
        builder: (builder) {
          return Container(
            height: 250.0,
            color: Colors.transparent, //could change this to Color(0xFF737373),
            //so you don't have to change MaterialApp canvasColor
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(35.0),
                      topRight: const Radius.circular(35.0))),
              child: Column(
                children: [
                  Container(
                    height: 86,
                    decoration: BoxDecoration(
                        color: Color(0xFF1C608D),
                        borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(35.0),
                            topRight: const Radius.circular(35.0))),
                    width: double.infinity,
                    child: Center(
                        child: Text(
                      'اختر طريقة الدفع',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15, right: 20),
                    child: ListTile(
                      title: Text('نقدى'),
                      leading: Image.asset(
                        'assets/icons/icon50.png',
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15, right: 20),
                    child: ListTile(
                      title: Text(
                        'اضف بطاقة دفع',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF4C5264),
                        ),
                      ),
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icons/icon49.png'),
                          ),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Color(0xFF4C5264),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => AddNewCardScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  Future<void> _showDialog1() async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        Future.delayed(Duration(seconds: 5), () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => OrderDetailsScreen(),
            )
          );
        });
        return Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * .03),
            Container(
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.width,
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
                    AvatarGlow(
                      glowColor: Colors.blue,
                      endRadius: 90.0,
                      duration: Duration(milliseconds: 2000),
                      repeat: true,
                      showTwoGlows: true,
                      repeatPauseDuration: Duration(milliseconds: 100),
                      child: Material(
                        elevation: 8.0,
                        shape: CircleBorder(),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[100],
                          child: Image.asset(
                            'assets/images/image23.png',
                            height: 60,
                          ),
                          radius: 40.0,
                        ),
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      'assets/images/image21.png',
                      width: 70,
                      height: 100,
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      'تم ارسال طلبك يرجى الانتظار \n لحين استقبال طلبك',
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xFF707070),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 30,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Color(0xFFF8F8F8),
                        ),
                        child: Center(
                            child: Text(
                          'الغاء الطلب',
                          style:
                              TextStyle(fontSize: 12, color: Color(0xFFA2A2A2)),
                        )),
                      ),
                    ),
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
        body: Stack(
          children: [
            _googleMap(context),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 30),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  height: 49.5,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'assets/icons/icon9.png'),
                                        child: Image.asset(
                                          'assets/icons/icon4.png',
                                          height: 12,
                                          width: 12,
                                        ),
                                        radius: 10,
                                      ),
                                      Text(
                                        'فحص كمبيوتر',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xFF4C5264)),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: .5,
                                  width: MediaQuery.of(context).size.width,
                                  color: Colors.grey,
                                ),
                                Container(
                                  height: 50,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        '150',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xFF2777B2)),
                                      ),
                                      Text(
                                        'ريال',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xFF4C5264)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 100,
                            width: .5,
                            color: Colors.grey,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    _modalBottomSheetMenu();
                                  },
                                  child: Container(
                                    height: 49.5,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          'CL اكورا 2018',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xFF4C5264)),
                                        ),
                                        Icon(Icons.keyboard_arrow_down_rounded),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: .5,
                                  width: MediaQuery.of(context).size.width,
                                  color: Colors.grey,
                                ),
                                InkWell(
                                  onTap: () {
                                    _modalBottomSheetMenu1();
                                  },
                                  child: Container(
                                    height: 50,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          'نقدى',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xFF4C5264)),
                                        ),
                                        // SizedBox(
                                        //   width: 22,
                                        // ),
                                        Icon(Icons.keyboard_arrow_down_rounded),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      child: Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => TabularOrderScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'طلب مجدول',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Image.asset(
                                      'assets/icons/icon42.png',
                                      height: 14,
                                      width: 13,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              child: defaultButton(
                                color: Color(0xFF1C608D),
                                text: 'طلب',
                                function: () {
                                  _showDialog1();
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _googleMap(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: GoogleMap(
        mapType: MapType.normal,
        // onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0,
        ),
        zoomControlsEnabled: false,
        // markers: workShop ? workshopMarkers : captainMarkers,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
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
      backgroundColor: Color(0xFFF8F8F8),
      iconTheme: IconThemeData(
        color: Colors.indigo,
      ),
      toolbarHeight: 70,
      elevation: 0.0,
      actions: [
        Column(
          children: [
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                _showDialog();
              },
              child: Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                height: 30,
                width: MediaQuery.of(context).size.width / 1.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'الموقع الحالى',
                      style: TextStyle(fontSize: 10, color: Color(0xFFDCDCDC)),
                    ),
                    Icon(
                      Icons.location_on,
                      color: Color(0xFF2777B2),
                      size: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          children: [
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                print('ll');
              },
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Icon(
                  Icons.search,
                  color: Colors.indigo,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
