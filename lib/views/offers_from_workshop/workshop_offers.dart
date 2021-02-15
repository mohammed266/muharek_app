import 'package:flutter/material.dart';
import '../../shared/components/component.dart';
import 'package:date_time_picker/date_time_picker.dart';

class OffersFromWorkshopScreen extends StatefulWidget {
  @override
  _OffersFromWorkshopScreenState createState() =>
      _OffersFromWorkshopScreenState();
}

class _OffersFromWorkshopScreenState extends State<OffersFromWorkshopScreen> {
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
                    Image.asset('assets/images/image16.png',height: 80,width: 100,),
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
        appBar: buildAppBar(context),
        backgroundColor: Colors.white,
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
                  underline: Text(''),
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
                title: 'رقم الهاتف',
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
                  underline: Text(''),
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
                title: 'اختر اليوم',
              ),
              Container(
                padding: EdgeInsets.only(left: 15, right: 15, bottom: 5),
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Color(0xFFF8F8F8),
                ),
                child: DateTimePicker(
                  initialValue: '',
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                  // dateLabelText: '20/12/2020',
                  onChanged: (val) => print(val),
                  validator: (val) {
                    print(val);
                    return null;
                  },
                  onSaved: (val) => print(val),
                  style: TextStyle(fontSize: 13),
                  decoration: InputDecoration(
                    hintText: '20/12/2020',
                    hintStyle: TextStyle(
                      fontSize: 12,
                      color: Color(0xFFBFBFBF),
                    ),
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.only(left: 50,right: 50),
                child: defaultButton(
                  text: 'حجز',
                  color: Color(0xFF1C608D),
                  function: () {
                    _showDialog();
                  },
                ),
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

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        'ورشة أبو مازن',
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
