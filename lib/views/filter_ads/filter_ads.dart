import 'package:flutter/material.dart';
import '../../shared/components/component.dart';

class FilterAdsScreen extends StatefulWidget {
  @override
  _FilterAdsScreenState createState() => _FilterAdsScreenState();
}

class _FilterAdsScreenState extends State<FilterAdsScreen> {
  List<String> city = ['A', 'B', 'C', 'D'];
  List<String> sortAs = ['A', 'B', 'C', 'D'];
  List<String> items = ['A', 'B', 'C', 'D'];
  List<String> madeYear1 = ['A', 'B', 'C', 'D'];
  List<String> madeYear2 = ['A', 'B', 'C', 'D'];
  List<String> carType = ['A', 'B', 'C', 'D'];
  List<String> carModel = ['A', 'B', 'C', 'D'];

  String _newCity;
  String _newSort;
  String _newItem;
  String _newMadeYear1;
  String _newMadeYear2;
  String _newCarType;
  String _newCarModel;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xFFF8F8F8),
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      'assets/icons/icon46.png',
                      height: 19,
                      width: 19,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'إعادة تعين',
                    style: TextStyle(fontSize: 14, color: Color(0xFF4C5264)),
                  ),
                  Spacer(),
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/icons/icon47.png',
                        height: 35,
                        width: 35,
                      ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height* 0.79,
              child: Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _title(
                        title: 'ترتيب حسب',
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
                          underline: Text(''),
                          items: sortAs.map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(value),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              _newSort = newValue;
                            });
                          },
                          value: _newSort,
                          isExpanded: true,
                          hint: Text(
                            'اختر الترتيب',
                            style: TextStyle(fontSize: 12, color: Color(0xFFBFBFBF)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
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
                            'اختر المدينة',
                            style: TextStyle(fontSize: 12, color: Color(0xFFBFBFBF)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      _title(
                        title: 'الصنف',
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
                          items: items.map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(value),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              _newItem = newValue;
                            });
                          },
                          value: _newItem,
                          isExpanded: true,
                          hint: Text(
                            'اختر صنف الإعلان : مثال سيارات',
                            style: TextStyle(fontSize: 12, color: Color(0xFFBFBFBF)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: (){
                                //
                              },
                              child: Column(
                                children: [
                                  _title(
                                    title: 'سنة الصنع',
                                  ),
                                  Container(
                                    height: 42,
                                    padding: EdgeInsets.only(left: 15,right: 15),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF8F8F8),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: DropdownButton<String>(
                                      underline: Text(''),
                                      items: madeYear1.map((String value) {
                                        return new DropdownMenuItem<String>(
                                          value: value,
                                          child: new Text(value),
                                        );
                                      }).toList(),
                                      onChanged: (newValue) {
                                        setState(() {
                                          _newMadeYear1 = newValue;
                                        });
                                      },
                                      value: _newMadeYear1,
                                      isExpanded: true,
                                      hint: Text(
                                        'من',
                                        style: TextStyle(fontSize: 12, color: Color(0xFFBFBFBF)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                _title(
                                  title: 'سنة الصنع',
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 15,right: 15),
                                  height: 42,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF8F8F8),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: DropdownButton<String>(
                                    underline: Text(''),
                                    items: madeYear2.map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newValue) {
                                      setState(() {
                                        _newMadeYear2 = newValue;
                                      });
                                    },
                                    value: _newMadeYear2,
                                    isExpanded: true,
                                    hint: Text(
                                      'الى',
                                      style: TextStyle(fontSize: 12, color: Color(0xFFBFBFBF)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      _title(
                        title: 'نوع السيارة',
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
                          items: carType.map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(value),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              _newCarType = newValue;
                            });
                          },
                          value: _newCarType,
                          isExpanded: true,
                          hint: Text(
                            'اختر نوع السيارة : مثال تويوتا',
                            style: TextStyle(fontSize: 12, color: Color(0xFFBFBFBF)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      _title(
                        title: 'موديل السيارة',
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
                          items: carModel.map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(value),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              _newCarModel = newValue;
                            });
                          },
                          value: _newCarModel,
                          isExpanded: true,
                          hint: Text(
                            'اختر نوع السيارة : مثال تويوتا',
                            style: TextStyle(fontSize: 12, color: Color(0xFFBFBFBF)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 50,right: 50),
                        child: defaultButton(
                          text: 'اظهر النتائج',
                          color: Color(0xFF1C608D),
                          function: () {
                            // _showDialog();
                          },
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
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
