import 'dart:async';

import 'package:flutter/material.dart';
import '../../../shared/components/component.dart';
import '../../add_new_car/add_new_car.dart';
import '../../add_new_card/add_new_card.dart';
import '../../order_details/order_details.dart';
import '../../owner_workshop/workshop_owner.dart';
import '../../tabular_order/tabular_order.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';


class WorkshopOnMapScreen extends StatefulWidget {
  @override
  _WorkshopOnMapScreenState createState() => _WorkshopOnMapScreenState();
}

class _WorkshopOnMapScreenState extends State<WorkshopOnMapScreen> {
  final LatLng _center = const LatLng(31.037933, 31.381523);
  // (22.5448131,88.3403691);
  GoogleMapController mapController;
  BitmapDescriptor mapMarker;
  BitmapDescriptor mapMarker1;
  bool workShop = true;
  bool selectService = true;

  Set<Marker> workshopMarkers = {};
  Set<Marker> captainMarkers = {};

  @override
  void initState() {
    setCustomMapMarker();
    super.initState();
  }
  bool taped = true;
  Future<void> setCustomMapMarker() async {
    mapMarker = await BitmapDescriptor.fromAssetImage(
      ImageConfiguration(size: Size.square(50)),
      'assets/icons/icon37.png',
    );
    mapMarker1 = await BitmapDescriptor.fromAssetImage(
      ImageConfiguration(),
      'assets/icons/icon38.png',
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    setState(() {
      workshopMarkers.add(
        Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(31.037933, 31.381523),
          infoWindow: InfoWindow(
            title: '!',
            snippet: '',
          ),
          icon: mapMarker,
          onTap: () {
            _showDialog();
          },
        ),
      );
      captainMarkers.add(
        Marker(
            markerId: MarkerId('id-2'),
            position: LatLng(31.037933, 31.351523),
            infoWindow: InfoWindow(
              title: 'welcome home',
              snippet: '',
            ),
            icon: mapMarker1,
            onTap: () {
              _showDialog1();
            }),
      );
    });
  }

  Future<void> _showDialog() async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * .5),
            Container(
              height: MediaQuery.of(context).size.height * .24,
              width: double.infinity,
              child: Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17),
                ),
                insetPadding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 50,
                  bottom: 10,
                  right: 20,
                  left: 20,
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 8, right: 8),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'ورشة فهد بلال',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF3192D9),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.watch_later_outlined,
                                size: 20, color: Color(0xFF3192D9)),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'السبت - الخميس ( 09:00 ص - 09:00 م)',
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xFFA2A2A2)),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.location_on_outlined,
                                size: 20, color: Color(0xFF3192D9)),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'الخرج-طريق الملك فهد بجوار البنك الاهلى \n التجارى',
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xFFA2A2A2)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: defaultButton(
                text: 'الذهاب للورشة',
                function: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => WorkshopOwnerScreen(),
                    ),
                  );
                },
                color: Color(0xFF1C608D),
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> _showDialog1() async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
         builder: (context,setState){
           return Column(
             children: [
               SizedBox(height: MediaQuery.of(context).size.height * .5),
               Container(
                 height: MediaQuery.of(context).size.height * .24,
                 width: double.infinity,
                 child: Dialog(
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(17),
                   ),
                   insetPadding: EdgeInsets.only(
                     top: MediaQuery.of(context).size.height / 50,
                     bottom: 10,
                     right: 20,
                     left: 20,
                   ),
                   child: Container(
                     child: Row(
                       children: [
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.center,
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Padding(
                               padding: EdgeInsets.only(left: 8, right: 8),
                               child: CircleAvatar(
                                 radius: 30,
                                 backgroundColor: Colors.green,
                               ),
                             ),
                           ],
                         ),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             Text(
                               'كابتن / محمد السيد ربيع',
                               style: TextStyle(
                                 fontSize: 12,
                                 color: Color(0xFFA2A2A2),
                                 fontWeight: FontWeight.bold,
                               ),
                             ),
                             Text(
                               'فحص كمبيوتر/فحص محرك/فحص بادى/ \n فحص شامل',
                               style: TextStyle(
                                   fontSize: 11, color: Color(0xFF3192D9)),
                             ),
                           ],
                         ),
                       ],
                     ),
                   ),
                 ),
               ),
               Padding(
                 padding: EdgeInsets.only(left: 20, right: 20),
                 child: defaultButton(
                   text: 'طلب خدمة',
                   function: () {
                     Navigator.pop(context);
                     _showDialog3();
                   },
                   color: Color(0xFF1C608D),
                 ),
               ),
             ],
           );
         },
        );
      },
    );
  }

  // Future<void> _showDialog2() async {
  //   return showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return Padding(
  //         padding: EdgeInsets.only(left: 20, right: 20),
  //         child: Column(
  //           children: [
  //             SizedBox(height: MediaQuery.of(context).size.height * .49),
  //             Container(
  //               width: double.infinity,
  //               height: 100,
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(17),
  //                 color: Colors.white,
  //               ),
  //               child: Row(
  //                 children: [
  //                   Expanded(
  //                     child: Column(
  //                       children: [
  //                         GestureDetector(
  //                           onTap: () {
  //                             _modalBottomSheetMenu2();
  //                           },
  //                           child: Container(
  //                             height: 49.5,
  //                             child: Row(
  //                               mainAxisAlignment:
  //                                   MainAxisAlignment.spaceEvenly,
  //                               children: [
  //                                 CircleAvatar(
  //                                   backgroundImage:
  //                                       AssetImage('assets/icons/icon9.png'),
  //                                   child: Image.asset(
  //                                     'assets/icons/icon4.png',
  //                                     height: 12,
  //                                     width: 12,
  //                                   ),
  //                                   radius: 10,
  //                                 ),
  //                                 Text(
  //                                   'اختر الخدمة',
  //                                   style: TextStyle(
  //                                       fontSize: 12, color: Color(0xFF4C5264)),
  //                                 ),
  //                               ],
  //                             ),
  //                           ),
  //                         ),
  //                         Container(
  //                           height: .5,
  //                           width: MediaQuery.of(context).size.width,
  //                           color: Colors.grey,
  //                         ),
  //                         Container(
  //                           height: 50,
  //                           child: Row(
  //                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                             children: [
  //                               Text(
  //                                 'السعر',
  //                                 style: TextStyle(
  //                                     fontSize: 12, color: Color(0xFFDCDCDC)),
  //                               ),
  //                               Text(
  //                                 'ريال',
  //                                 style: TextStyle(
  //                                     fontSize: 12, color: Color(0xFF4C5264)),
  //                               ),
  //                             ],
  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                   Container(
  //                     height: 100,
  //                     width: .5,
  //                     color: Colors.grey,
  //                   ),
  //                   Expanded(
  //                     child: Column(
  //                       children: [
  //                         GestureDetector(
  //                           onTap: () {
  //                             _modalBottomSheetMenu();
  //                           },
  //                           child: Container(
  //                             height: 49.5,
  //                             child: Row(
  //                               mainAxisAlignment:
  //                                   MainAxisAlignment.spaceEvenly,
  //                               children: [
  //                                 Text(
  //                                   'اختر السيارة ',
  //                                   style: TextStyle(
  //                                     fontSize: 12,
  //                                     color: Color(0xFF4C5264),
  //                                   ),
  //                                 ),
  //                                 Icon(Icons.keyboard_arrow_down_rounded),
  //                               ],
  //                             ),
  //                           ),
  //                         ),
  //                         Container(
  //                           height: .5,
  //                           width: MediaQuery.of(context).size.width,
  //                           color: Colors.grey,
  //                         ),
  //                         GestureDetector(
  //                           onTap: () {
  //                             _modalBottomSheetMenu1();
  //                           },
  //                           child: Container(
  //                             height: 50,
  //                             child: Row(
  //                               mainAxisAlignment:
  //                                   MainAxisAlignment.spaceAround,
  //                               children: [
  //                                 Text(
  //                                   'اختر طريقة الدفع',
  //                                   style: TextStyle(
  //                                       fontSize: 12, color: Color(0xFF4C5264)),
  //                                 ),
  //                                 // SizedBox(
  //                                 //   width: 22,
  //                                 // ),
  //                                 Icon(Icons.keyboard_arrow_down_rounded),
  //                               ],
  //                             ),
  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //             SizedBox(
  //               height: 10,
  //             ),
  //             Container(
  //               width: double.infinity,
  //               height: 40,
  //               child: Row(
  //                 children: [
  //                   Expanded(
  //                     child: GestureDetector(
  //                       onTap: () {
  //                         Navigator.push(context,
  //                           MaterialPageRoute(
  //                             builder: (_) => TabularOrderScreen(),
  //                           ),
  //                         );
  //                       },
  //                       child: Container(
  //                         height: 40,
  //                         width: MediaQuery.of(context).size.width / 2.2,
  //                         decoration: BoxDecoration(
  //                           color: Colors.white,
  //                           borderRadius: BorderRadius.circular(20),
  //                         ),
  //                         child: Row(
  //                           crossAxisAlignment: CrossAxisAlignment.center,
  //                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                           children: [
  //                             Text(
  //                               'طلب مجدول',
  //                               style: TextStyle(
  //                                   fontSize: 12, color: Colors.green),
  //                             ),
  //                             Image.asset('assets/icons/icon42.png'),
  //                           ],
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //                   SizedBox(
  //                     width: 10,
  //                   ),
  //                   Expanded(
  //                     child: Container(
  //                       child: defaultButton(
  //                         color: Color(0xFF1C608D),
  //                         text: 'طلب',
  //                         function: () {
  //                           Navigator.push(
  //                             context,
  //                             MaterialPageRoute(
  //                               builder: (_) => OrderDetailsScreen(),
  //                             ),
  //                           );
  //                         },
  //                       ),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }
  Future<void> _showDialog3() async {
    return showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * .53),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * .19,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  _modalBottomSheetMenu2();
                                },
                                child: Container(
                                  height: 49.5,
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      CircleAvatar(
                                        backgroundImage:
                                        AssetImage('assets/icons/icon9.png'),
                                        child: Image.asset(
                                          'assets/icons/icon4.png',
                                          height: 12,
                                          width: 12,
                                        ),
                                        radius: 10,
                                      ),
                                      Material(
                                        color: Colors.transparent,
                                        child: Text(
                                          'اختر الخدمة',
                                          style: TextStyle(
                                              fontSize: 12, color: Color(0xFF4C5264)),
                                        ),
                                      ),
                                    ],
                                  ),
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
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Material(
                                      color: Colors.transparent,
                                      child: Text(
                                        'السعر',
                                        style: TextStyle(
                                            fontSize: 12, color: Color(0xFFDCDCDC)),
                                      ),
                                    ),
                                    Material(
                                      color: Colors.transparent,
                                      child: Text(
                                        'ريال',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFF4C5264),
                                        ),
                                      ),
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
                              GestureDetector(
                                onTap: () {
                                  _modalBottomSheetMenu();
                                },
                                child: Container(
                                  height: 49.5,
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Material(
                                        color: Colors.transparent,
                                        child: Text(
                                          'اختر السيارة ',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xFF4C5264),
                                          ),
                                        ),
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
                              GestureDetector(
                                onTap: () {
                                  _modalBottomSheetMenu1();
                                },
                                child: Container(
                                  height: 50,
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                    children: [
                                      Material(
                                        color: Colors.transparent,
                                        child: Text(
                                          'اختر طريقة الدفع',
                                          style: TextStyle(
                                              fontSize: 12, color: Color(0xFF4C5264)),
                                        ),
                                      ),
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
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                MaterialPageRoute(
                                  builder: (_) => TabularOrderScreen(),
                                ),
                              );
                            },
                            child: Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width / 2.2,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Material(
                                    color: Colors.transparent,
                                    child: Text(
                                      'طلب مجدول',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.green),
                                    ),
                                  ),
                                  Image.asset('assets/icons/icon42.png',height: 14,width: 13,),
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
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => OrderDetailsScreen(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
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

  void _modalBottomSheetMenu2() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        barrierColor: Colors.black26,
        backgroundColor: Color(0xFF00000080),
        builder: (builder) {
          return Container(
            height: 327.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(35.0),
                topRight: const Radius.circular(35.0),
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: Color(0xFF1C608D),
                      borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(35.0),
                          topRight: const Radius.circular(35.0))),
                  width: double.infinity,
                  child: Center(
                      child: Text(
                    'حدد نوع الخدمة',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )),
                ),
                Column(
                  children: [
                    ServiceSelect(
                      title: 'خدمة فحص كمبيوتر',
                      image: 'assets/icons/icon4.png',
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Color(0xFFDCDCDC),
                    ),
                    ServiceSelect(
                      title: 'فحص هيكل',
                      image: 'assets/icons/icon5.png',
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Color(0xFFDCDCDC),
                    ),
                    ServiceSelect(
                      title: 'فحص محرك',
                      image: 'assets/icons/icon6.png',
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Color(0xFFDCDCDC),
                    ),
                    ServiceSelect(
                      title: 'فحص شامل',
                      image: 'assets/icons/icon7.png',
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: SizedBox(),
          backgroundColor: Color(0xFFF8F8F8),
          iconTheme: IconThemeData(
            color: Colors.indigo,
          ),
          toolbarHeight: 70,
          elevation: 0.0,
          actions: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 35,
                  width: MediaQuery.of(context).size.width / 1.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 8,
                      top: 5,
                      bottom: 5,
                    ),
                    child: TextField(
                      scrollPadding: EdgeInsets.all(8),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        suffixIcon: Icon(
                          Icons.place,
                          color: Colors.indigo,
                          size: 18,
                        ),
                      ),
                      onChanged: (val) {
                        setState(() {});
                      },
                      onTap: () {},
                      textInputAction: TextInputAction.search,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 30,
            )
          ],
        ),
        body: Stack(
          children: [
            _googleMap(context),
            _rowContainers(context),
          ],
        ),
      ),
    );
  }

  Widget _rowContainers(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                workShop = true;
              });
            },
            child: Container(
              height: 35,
              width: MediaQuery.of(context).size.width / 2.5,
              decoration: BoxDecoration(
                color: workShop ? Colors.white : Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'ورشة',
                  style: TextStyle(
                    color: workShop ? Color(0xFF2777B2) : Color(0xFF707070),
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
          Spacer(),
          InkWell(
            onTap: () {
              setState(() {
                workShop = false;
              });
            },
            child: Container(
              height: 35,
              width: MediaQuery.of(context).size.width / 2.5,
              decoration: BoxDecoration(
                color: workShop ? Colors.grey[200] : Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'كابتن فحص',
                  style: TextStyle(
                    color: workShop ? Color(0xFF707070) : Color(0xFF2777B2),
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _googleMap(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: GoogleMap(
        mapType: MapType.normal,
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 12.0,
        ),
        zoomControlsEnabled: false,myLocationEnabled: false,
        markers: workShop ? workshopMarkers : captainMarkers,
      ),
    );
  }
}

class ServiceSelect extends StatefulWidget {
  const ServiceSelect({
    Key key,
    this.title,
    this.image,
  }) : super(key: key);
  final String title, image;
  @override
  _ServiceSelectState createState() => _ServiceSelectState();
}

class _ServiceSelectState extends State<ServiceSelect> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, top: 5, bottom: 5),
      child: ListTile(
        selected: isSelected,
        title: Text(
          widget.title,
          style: TextStyle(
            color: isSelected ? Color(0xFF2777B2) : Color(0xFF4C5264),
          ),
        ),
        onTap: toggleSelection,
        leading: Container(
          padding: EdgeInsets.all(3),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/icons/icon9.png'),
            ),
          ),
          child: Image.asset(widget.image),
        ),
      ),
    );
  }

  bool isSelected = false;
  void toggleSelection() {
    setState(() {
      if (isSelected) {
        isSelected = false;
      } else {
        isSelected = true;
      }
    });
  }
}
