import 'package:flutter/material.dart';
import '../../../shared/components/component.dart';

class PayCommissionScreen extends StatefulWidget {

  @override
  _PayCommissionScreenState createState() => _PayCommissionScreenState();
}

class _PayCommissionScreenState extends State<PayCommissionScreen> {
  List<String> banks = ['A', 'B', 'C', 'D'];

  String _newValue;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFCFCFC),
        appBar: buildAppBar(context),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: GestureDetector(
              onTap: (){
                FocusScope.of(context).requestFocus(new FocusNode());
              },
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 30,
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/icon9.png'),
                      ),
                    ),
                    child: Image.asset(
                      'assets/icons/icon54.png',
                      height: 40,
                      width: 40,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'يمكنك استخدام التحويل البنكى لدفع العمولة \n عن طريق ارسال حواله الى حساباتنا فى البنوك \n المحلية',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF6B6B6B),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(17),
                      border: Border.all(color: Color(0xFFD1D1D1)),
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: CircleAvatar(
                                radius: 24,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'صاحب الحساب : اسم صاحب الحساب او المؤسسة',
                              style: TextStyle(
                                  fontSize: 10, color: Color(0xFF6B6B6B),fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'رقم الحساب : 12546321598745',
                              style: TextStyle(
                                  fontSize: 10, color: Color(0xFF6B6B6B)),
                            ),
                            Text(
                              'رقم الايبان : 12546321598745',
                              style: TextStyle(
                                  fontSize: 10, color: Color(0xFF6B6B6B)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(17),
                      border: Border.all(color: Color(0xFFD1D1D1)),
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: CircleAvatar(
                                radius: 24,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'صاحب الحساب : اسم صاحب الحساب او المؤسسة',
                              style: TextStyle(
                                  fontSize: 10, color: Color(0xFF6B6B6B),fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'رقم الحساب : 12546321598745',
                              style: TextStyle(
                                  fontSize: 10, color: Color(0xFF6B6B6B)),
                            ),
                            Text(
                              'رقم الايبان : 12546321598745',
                              style: TextStyle(
                                  fontSize: 10, color: Color(0xFF6B6B6B)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text('بعد ارسال المبلغ يجب مراسلتنا عبر النموذج التالى \n لاجل التاكيد على دفع العمولة',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF6B6B6B),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    height: 750,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(17),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          // spreadRadius: 5,
                          blurRadius: 12,
                          offset: Offset(0, 5), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        _title(
                          title: 'الاسم',
                        ),
                        Container(
                          width: double.infinity,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            border: Border.all(color: Color(0xFFD1D1D1)),
                          ),
                          child: inputField(
                            validate: (v){},
                            onChanged: (v){},
                            onSave: (v){},
                            textInputType: TextInputType.name,
                            secure: false,
                            icon: true,
                            color: Color(0xFFFCFCFC),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        _title(
                          title: 'رقم الجوال',
                        ),
                        Container(
                          width: double.infinity,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            border: Border.all(color: Color(0xFFD1D1D1)),
                          ),
                          child: inputField(
                            validate: (v){},
                            onChanged: (v){},
                            onSave: (v){},
                            textInputType: TextInputType.number,
                            secure: false,
                            icon: true,
                            prefix: Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text('+961',style: TextStyle(fontSize: 15,color: Color(0xFF2777B2)),),
                            ),
                            color: Color(0xFFFCFCFC),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        _title(
                          title: 'كلمة المرور',
                        ),
                        Container(
                          width: double.infinity,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            border: Border.all(color: Color(0xFFD1D1D1)),
                          ),
                          child: inputField(
                            validate: (v){},
                            onChanged: (v){},
                            onSave: (v){},
                            textInputType: TextInputType.name,
                            secure: true,
                            icon: true,
                            color: Color(0xFFFCFCFC),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        _title(
                          title: 'البنك الذى تم التحويل عليه',
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20,right: 20),
                          width: double.infinity,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color(0xFFFCFCFC),
                            borderRadius: BorderRadius.circular(22),
                            border: Border.all(color: Color(0xFFD1D1D1)),
                          ),
                          child: DropdownButton<String>(
                            underline: Text(''),
                            items: banks.map((String value) {
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
                              'اختر البنك',
                              style: TextStyle(fontSize: 12, color: Color(0xFFBFBFBF)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        _title(
                          title: 'متى تم التحويل',
                        ),
                        Container(
                          width: double.infinity,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            border: Border.all(color: Color(0xFFD1D1D1)),
                          ),
                          child: inputField(
                            validate: (v){},
                            onChanged: (v){},
                            onSave: (v){},
                            textInputType: TextInputType.datetime,
                            secure: false,
                            icon: true,
                            hint: 'مثال 05/12/2020',
                            color: Color(0xFFFCFCFC),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        _title(
                          title: 'اسم المحول',
                        ),
                        Container(
                          width: double.infinity,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            border: Border.all(color: Color(0xFFD1D1D1)),
                          ),
                          child: inputField(
                            validate: (v){},
                            onChanged: (v){},
                            onSave: (v){},
                            textInputType: TextInputType.name,
                            secure: false,
                            icon: true,
                            color: Color(0xFFFCFCFC),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        _title(
                          title: 'ملاحظات',
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xFFFCFCFC),
                            borderRadius: BorderRadius.circular(22),
                            border: Border.all(color: Color(0xFFD1D1D1)),
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
                          height: 50,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30,right: 30),
                          child: defaultButton(
                            text: 'ارسال',
                            color: Color(0xFF1C608D),
                            function: (){
                              //
                            },
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
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
        'دفع العمولة',
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
