import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:muharek_app/shared/components/component.dart';
import 'package:permission_handler/permission_handler.dart';

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
  bool selectService =true;

  Set<Marker> workshopMarkers = {};
  Set<Marker> captainMarkers = {};

  @override
  void initState() {
    setCustomMapMarker();
    super.initState();
  }

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
            title: 'قوم نحرق هالمدينة ونعمر واحدة اشرف !!',
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
              snippet: 'hey how ar',
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
            SizedBox(height: MediaQuery.of(context).size.height * .45),
            Container(
              height: 130,
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
                function: () {},
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
        return Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * .45),
            Container(
              height: 130,
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
                  setState(() {
                    selectService = false;
                  });
                },
                color: Color(0xFF1C608D),
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
                        setState(() {

                        });
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
          zoom: 11.0,
        ),
        zoomControlsEnabled: false,
        markers: workShop ? workshopMarkers : captainMarkers,
      ),
    );
  }
  // Marker newMarker = Marker(
  //   markerId: MarkerId('id-2'),
  //   position: LatLng(40.712776, -73.005974),
  //   infoWindow: InfoWindow(
  //     title: 'welcome back',
  //     snippet: 'hey how ar you',
  //   ),
  //   icon: BitmapDescriptor.defaultMarkerWithHue(
  //     BitmapDescriptor.hueViolet,
  //   ),
  // );
  // Marker new1Marker = Marker  (
  //   markerId: MarkerId('id-1'),
  //   position: LatLng(40.712776, -74.005974),
  //   infoWindow: InfoWindow(
  //     title: 'welcome home',
  //     snippet: 'hey how ar u',
  //   ),
  //   icon: BitmapDescriptor.defaultMarkerWithHue(
  //     BitmapDescriptor.hueViolet,
  //   ),
  // );
}
