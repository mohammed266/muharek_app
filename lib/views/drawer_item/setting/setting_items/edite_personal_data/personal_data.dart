import 'package:flutter/material.dart';
import '../../../../../shared/components/component.dart';

class PersonalDataScreen extends StatelessWidget {
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
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: (){
                        //
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 30,
                        child: Image.asset('assets/images/image19.png'),
                      ),
                    ),
                  ),
                  Text('تغير الصورة',style: TextStyle(fontSize: 12,color: Color(0xFF2B2F3B)),),
                  SizedBox(
                    height: 40,
                  ),
                  _title(
                    title: 'الاسم',
                  ),
                  inputField(
                    validate: (value){},
                    onChanged: (value){},
                    onSave: (value){},
                    hint: 'محمد ابراهيم',
                    textInputType: TextInputType.name,
                    secure: false,
                    icon: true,
                    color:  Color(0xFFF8F8F8),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  _title(
                    title: 'البريد الالكترونى',
                  ),
                  inputField(
                    validate: (value){},
                    onChanged: (value){},
                    onSave: (value){},
                    hint: 'Mohamed@gmail.com',
                    textInputType: TextInputType.emailAddress,
                    secure: false,
                    icon: true,
                    color:  Color(0xFFF8F8F8),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  _title(
                    title: 'الجوال',
                  ),
                  inputField(
                    validate: (value){},
                    onChanged: (value){},
                    onSave: (value){},
                    hint: '+9665648798543',
                    textInputType: TextInputType.number,
                    secure: false,
                    icon: true,
                    color:  Color(0xFFF8F8F8),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  _title(
                    title: 'تغير الرقم السري',
                  ),
                  inputField(
                    validate: (value){},
                    onChanged: (value){},
                    onSave: (value){},
                    prefix: Icon(Icons.remove_red_eye,size: 15,),
                    textInputType: TextInputType.visiblePassword,
                    secure: true,
                    icon: true,
                    color:  Color(0xFFF8F8F8),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  _title(
                    title: 'كتابة الرقم السرى مرة اخرى',
                  ),
                  inputField(
                    validate: (value){},
                    onChanged: (value){},
                    onSave: (value){},
                    prefix: Icon(Icons.remove_red_eye,size: 15,),
                    textInputType: TextInputType.visiblePassword,
                    secure: true,
                    icon: true,
                    color:  Color(0xFFF8F8F8),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50,right: 50),
                    child: defaultButton(
                      color: Color(0xFF1C608D),
                      text: 'حفظ',
                      function: (){

                      },
                    ),
                  ),
                  SizedBox(
                    height: 40,
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
        'البيانات الشخصية',
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
