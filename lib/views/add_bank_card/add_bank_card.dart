import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:muharek_app/shared/components/component.dart';
import 'package:muharek_app/views/drawer_item/setting/setting_items/payment_way/payment_way.dart';

class AddBankCardScreen extends StatefulWidget {
  @override
  _AddBankCardScreenState createState() => _AddBankCardScreenState();
}

class _AddBankCardScreenState extends State<AddBankCardScreen> {
  bool masterCard = true;

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
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {

                            });
                            masterCard = true;
                          },
                          child: Container(
                              height: 50,
                              width: 60,
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/image24.png',
                                    color: masterCard
                                        ? Color(0xFF3192D9)
                                        : Colors.grey,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    width: 30,
                                    height: 2,
                                    color: masterCard
                                        ? Color(0xFF3192D9)
                                        : Colors.grey,
                                  ),
                                ],
                              )),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              masterCard = false;
                            });
                          },
                          child: Container(
                              height: 50,
                              width: 60,
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/image25.png',
                                    color: masterCard
                                        ? Colors.grey
                                        : Color(0xFF3192D9),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    width: 30,
                                    height: 2,
                                    color: masterCard
                                        ? Colors.grey
                                        : Color(0xFF3192D9),
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  if (masterCard) MasterCard(),

                ],
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
        'إضافة بطاقة جديدة',
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


class MasterCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _title(
          title: 'اسم صاحب البطاقة',
        ),
        inputField(
          hint: 'اكتب الاسم المدون على البطاقة',
          color: Color(0xFFF8F8F8),
          secure: false,
          textInputType: TextInputType.name,
          icon: true,
          onSave: (value){},
          onChanged: (value){},
          validate: (value){}
        ),
        SizedBox(
          height: 10,
        ),
        _title(
          title: 'رقم البطاقة',
        ),
        inputField(
            color: Color(0xFFF8F8F8),
            secure: false,
            textInputType: TextInputType.number,
            icon: true,
            onSave: (value){},
            onChanged: (value){},
            validate: (value){}
        ),
        SizedBox(
          height: 10,
        ),
        _title(
          title: 'تاريخ الانتهاء',
        ),
        inputField(
            hint: 'MM/YY',
            color: Color(0xFFF8F8F8),
            secure: false,
            textInputType: TextInputType.datetime,
            icon: true,
            onSave: (value){},
            onChanged: (value){},
            validate: (value){}
        ),
        SizedBox(
          height: 10,
        ),
        _title(
          title: 'ادخل كلمة المرور',
        ),
        inputField(
            hint: 'CCV',
            color: Color(0xFFF8F8F8),
            secure: true,
            textInputType: TextInputType.visiblePassword,
            icon: true,
            onSave: (value){},
            onChanged: (value){},
            validate: (value){}
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: EdgeInsets.only(left: 30,right: 30),
          child: defaultButton(
            color: Color(0xFF3192D9),
            text: 'اضافة',
            function: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) => PaymentWayScreen(),),);
            },
          ),
        ),
        SizedBox(
          height: 30,
        ),
      ],
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
