import 'package:flutter/material.dart';
import 'package:muharek_app/shared/components/component.dart';
import 'package:muharek_app/views/screening_service_after_choice/screening_service_after_choice.dart';


class ScreeningServicesScreen extends StatefulWidget {
  @override
  _ScreeningServicesScreenState createState() =>
      _ScreeningServicesScreenState();
}

class _ScreeningServicesScreenState extends State<ScreeningServicesScreen> {

  Future<void> _showDialog() async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
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
                      padding: EdgeInsets.only(left: 15,right: 15),
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
                            onTap: (){
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
                      padding: EdgeInsets.only(left: 15,right: 15),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width* 0.65,
                            decoration: BoxDecoration(
                              color: Color(0xFFF8F8F8),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Radio(
                                  value: null,
                                  groupValue: null,
                                  onChanged: null,
                                ),
                                Text(
                                  'الخبر',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              //
                            },
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFFF8F8F8),
                                borderRadius: BorderRadius.circular(10),
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
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15,right: 15),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width* 0.65,
                            decoration: BoxDecoration(
                              color: Color(0xFFF8F8F8),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Radio(
                                  value: null,
                                  groupValue: null,
                                  onChanged: null,
                                ),
                                Text(
                                  'الخبر',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              //
                            },
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFFF8F8F8),
                                borderRadius: BorderRadius.circular(10),
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
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15,right: 15),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width* 0.65,
                            decoration: BoxDecoration(
                              color: Color(0xFFF8F8F8),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Radio(
                                    value: null,
                                    groupValue: null,
                                    onChanged: null),
                                Text(
                                  'الخبر',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              //
                            },
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFFF8F8F8),
                                borderRadius: BorderRadius.circular(10),
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
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 27,right: 15),
                      child: InkWell(
                        onTap: (){
                          print('jjj');
                        },
                        child: Container(
                          padding: EdgeInsets.only(right: 15,left: 15),
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
                                child: Icon(Icons.add,color: Color(0xFF2777B2),size: 14,),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text('إضافة عنوان',style: TextStyle(fontSize: 15,color: Color(0xFF2777B2)),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35,right: 35),
                      child: defaultButton(
                        text: 'تأكيد',
                        function: (){

                        },
                        color: Color(0xFF2777B2),
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
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: SizedBox(),
          backgroundColor: Color(0xFFF8F8F8),
          iconTheme: IconThemeData(
            color: Colors.indigo,
          ),
          toolbarHeight: 75,
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
                          style:
                          TextStyle(fontSize: 10, color: Color(0xFFDCDCDC)),
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
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 15,right: 15),
          child: ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  WorkshopContainer(
                    title: 'فحص كمبيوتر',
                    image: 'assets/icons/icon4.png',
                    onTap: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (_) =>
                            ScreeningServiceAfterChoice(),
                        ),
                      );
                    },
                  ),
                  Spacer(),
                  WorkshopContainer(
                    title: 'فحص هيكل',
                    image: 'assets/icons/icon5.png',
                    onTap: (){
                      print('pp');
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  WorkshopContainer(
                    title: 'فحص محرك',
                    image: 'assets/icons/icon6.png',
                    onTap: (){

                    },
                  ),
                  Spacer(),
                  WorkshopContainer(
                    title: 'فحص شامل',
                    image: 'assets/icons/icon7.png',
                    onTap: (){
                      print('pp');
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
