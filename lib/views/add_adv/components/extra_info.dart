import 'package:flutter/material.dart';
import '../../../shared/components/component.dart';
import '../../normal_user_home/normal_user_home_screen.dart';

class ExtraInfo extends StatefulWidget {
  @override
  _ExtraInfoState createState() => _ExtraInfoState();
}

class _ExtraInfoState extends State<ExtraInfo> {
  List<String> city = ['A', 'B', 'C', 'D'];

  List<String> showNum = ['A', 'B'];

  List<String> showCom = ['A', 'B'];

  List<String> shareLocation = ['A', 'B'];

  String _newCity;

  String _newShowNum;

  String _newShowCom;

  String _newShareLocation;

  Future<void> _showDialog() async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Column(
              children: [
                SizedBox(height: 100),
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
                        height: 10,
                      ),
                      Image.asset(
                        'assets/images/image21.png',
                        height: 70,
                        width: 100,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'تم إضافة الإعلان \n بنجاح',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                    color: Color(0xFF2777B2),
                                  ),
                                ),
                                child: Center(
                                    child: Text(
                                      'مشاهدة الاعلان',
                                      style: TextStyle(
                                        color: Color(0xFF2777B2),
                                        fontSize: 12,
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (_) =>
                                          HomeScreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(
                                      color: Color(0xFF2777B2),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'الذهاب للرئيسية',
                                      style: TextStyle(
                                        color: Color(0xFF2777B2),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 50)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.75,
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            _title(
              title: 'المدينة',
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
                items: city.map((String value) {
                  return new DropdownMenuItem<String>(
                    value: value,
                    child: new Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _newCity = newValue;
                  });
                },
                value: _newCity,
                isExpanded: true,
                hint: Text(
                  'الرياض',
                  style: TextStyle(fontSize: 12, color: Color(0xFFBFBFBF)),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            _title(
              title: 'اظهار رقم الجوال',
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
                items: showNum.map((String value) {
                  return new DropdownMenuItem<String>(
                    value: value,
                    child: new Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _newShowNum = newValue;
                  });
                },
                value: _newShowNum,
                isExpanded: true,
                hint: Text(
                  'نعم',
                  style: TextStyle(fontSize: 12, color: Color(0xFFBFBFBF)),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            _title(
              title: 'السماح بالتعليقات',
            ),
            Container(
              height: 40,
              padding: EdgeInsets.only(left: 15, right: 15),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Color(0xFFF8F8F8),
              ),
              child: DropdownButton<String>(
                underline: Text(''),
                items: showCom.map((String value) {
                  return new DropdownMenuItem<String>(
                    value: value,
                    child: new Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _newShowCom = newValue;
                  });
                },
                value: _newShowCom,
                isExpanded: true,
                hint: Text(
                  'نعم',
                  style: TextStyle(fontSize: 12, color: Color(0xFFBFBFBF)),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            _title(
              title: 'السماح بمشاركة موقعى مع المستخدمين',
            ),
            Container(
              height: 40,
              padding: EdgeInsets.only(left: 15, right: 15),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Color(0xFFF8F8F8),
              ),
              child: DropdownButton<String>(
                underline: Text(''),
                items: shareLocation.map((String value) {
                  return new DropdownMenuItem<String>(
                    value: value,
                    child: new Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _newShareLocation = newValue;
                  });
                },
                value: _newShareLocation,
                isExpanded: true,
                hint: Text(
                  'نعم',
                  style: TextStyle(fontSize: 12, color: Color(0xFFBFBFBF)),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 50,right: 50),
              child: defaultButton(
                text: 'إضافة الاعلان',
                color: Color(0xFF1C608D),
                function: () {
                  _showDialog();
                },
              ),
            ),
          ],
        ),
      ),
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
