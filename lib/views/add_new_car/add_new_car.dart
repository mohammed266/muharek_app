import 'package:flutter/material.dart';
import '../../shared/components/component.dart';

class AddNewCarScreen extends StatefulWidget {
  @override
  _AddNewCarScreenState createState() => _AddNewCarScreenState();
}

class _AddNewCarScreenState extends State<AddNewCarScreen> {
  List<String> carModel = ['A', 'B', 'C', 'D'];
  List<String> carType = ['A', 'B', 'C', 'D'];
  List<String> yearMade = ['A', 'B', 'C', 'D'];
  String _newCarModel;
  String _newCarType;
  String _newYearMade;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(left: 20,right: 20,top: 20),
          child: GestureDetector(
            onTap: (){
              FocusScope.of(context).requestFocus(new FocusNode());
            },
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _title(
                    title: 'اسم مالك السيارة',
                  ),
                  Container(
                    width: double.infinity,
                    height: 40,
                    padding: EdgeInsets.only(left: 15, right: 15,bottom: 6),
                    decoration: BoxDecoration(
                      color: Color(0xFFF8F8F8),
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                      ),
                      keyboardType: TextInputType.name,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  _title(
                    title: 'نوع السيارة',
                  ),
                  Container(
                    height: 40,
                    padding: EdgeInsets.only(left: 15, right: 15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
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
                        'مثال ميتسوبيشي . كيا. تويوتا',
                        style: TextStyle(fontSize: 12, color: Color(0xFFBFBFBF)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  _title(
                    title: 'موديل السيارة',
                  ),
                  Container(
                    height: 40,
                    padding: EdgeInsets.only(left: 15, right: 15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
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
                        'حدد موديل السيارة',
                        style: TextStyle(fontSize: 12, color: Color(0xFFBFBFBF)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  _title(
                    title: 'سنة الصنع',
                  ),
                  Container(
                    height: 40,
                    padding: EdgeInsets.only(left: 15, right: 15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Color(0xFFF8F8F8),
                    ),
                    child: DropdownButton<String>(
                      underline: Text(''),
                      items: yearMade.map((String value) {
                        return new DropdownMenuItem<String>(
                          value: value,
                          child: new Text(value),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          _newYearMade = newValue;
                        });
                      },
                      value: _newYearMade,
                      isExpanded: true,
                      hint: Text(
                        'مثال 2018',
                        style: TextStyle(fontSize: 12, color: Color(0xFFBFBFBF)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  _title(
                    title: 'صورة السيارة',
                  ),
                  Container(
                    height: 150,
                    padding: EdgeInsets.only(left: 15, right: 15),
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Color(0xFFF8F8F8),
                      border: Border.all(color: Color(0xFFDCDCDC)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 60,right: 60),
                    child: defaultButton(
                      color: Color(0xFF1C608D),
                      text: 'اضافة',
                      function: (){

                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
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

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        'إضافة سيارة جديدة',
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
