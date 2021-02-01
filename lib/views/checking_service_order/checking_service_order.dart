import 'package:flutter/material.dart';
import 'package:muharek_app/shared/components/component.dart';

class CheckingServiceOrderScreen extends StatefulWidget {
  @override
  _CheckingServiceOrderScreenState createState() => _CheckingServiceOrderScreenState();
}

class _CheckingServiceOrderScreenState extends State<CheckingServiceOrderScreen> {
  List<String> cars = ['A', 'B', 'C', 'D'];

  List<String> payment = ['A', 'B', 'C', 'D'];

  String _newCar;

  String _newValue;

  Future<void> _showDialog() async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * .03),
            Container(
              height: MediaQuery.of(context).size.height * 0.9,
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
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          color: Color(0xFFF8F8F8),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.close,
                          color: Colors.red,
                          size: 20,
                        ),
                      ),
                    ),
                    Spacer(),
                    Image.asset('assets/images/image16.png'),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      'تم ارسال طلبك للورشة سيتم \n التواصل معك من قبل الورشة \n لتاكيد الحجز',
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xFF707070),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        print('ooo');
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
        body: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: ListView(
            children: [
              _title(
                title: 'نوع الصيانة',
              ),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Color(0xFFF8F8F8),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              _title(
                title: 'اختر السيارة',
              ),
              Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Color(0xFFF8F8F8),
                ),
                child: DropdownButton<String>(
                  items: cars.map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      _newCar = newValue;
                    });
                  },
                  value: _newCar,
                  isExpanded: true,
                  hint: Text(
                    'CL اكورا 2018',
                    style: TextStyle(fontSize: 12, color: Color(0xFFBFBFBF)),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              _title(
                title: 'اكتب نبذة عن المشكلة',
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
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                  ),
                  maxLines: 4,

                ),
              ),
              SizedBox(
                height: 15,
              ),
              _title(
                title: 'رقم الجوال',
              ),
              Container(
                height: 40,
                padding: EdgeInsets.only(left: 15, right: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Color(0xFFF8F8F8),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                    hintText: 'اكتب رقم الجوال',
                    hintStyle: TextStyle(
                      fontSize: 12,
                      color: Color(0xFFBFBFBF),
                    ),
                  ),
                  onChanged: (_) {},
                  keyboardType: TextInputType.number,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              _title(
                title: 'اختر طريقة الدفع',
              ),
              Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Color(0xFFF8F8F8),
                ),
                child: DropdownButton<String>(
                  items: payment.map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      _newValue = newValue;
                    });
                  },
                  value: _newValue,
                  isExpanded: true,
                  hint: Text(
                    'نقدى',
                    style: TextStyle(fontSize: 12, color: Color(0xFFBFBFBF)),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              _title(
                title: 'السعر',
              ),
              Container(
                height: 40,
                padding: EdgeInsets.only(left: 15, right: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Color(0xFFF8F8F8),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                    hintText: '‏300 ريال',
                    hintStyle: TextStyle(
                      fontSize: 12,
                      color: Color(0xFFBFBFBF),
                    ),
                  ),
                  onChanged: (_) {},
                  keyboardType: TextInputType.number,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        //
                      },
                      child: Container(
                        height: 42,
                        decoration: BoxDecoration(
                          color: Color(0xFFF8F8F8),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('طلب مجدول',style: TextStyle(fontSize: 12,color: Color(0xFF4C5264)),),
                            Image.asset('assets/icons/icon42.png'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: defaultButton(
                      text: 'طلب',
                      color: Color(0xFF3192D9),
                      function: () {
                        _showDialog();
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
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
        'طلب خدمة صيانة',
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

  Widget _title({String title}) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Color(0xFF4C5264),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
