import 'package:flutter/material.dart';
import '../../../../shared/components/component.dart';

class JoinAsWorkshopOwnerScreen extends StatefulWidget {
  @override
  _JoinAsWorkshopOwnerScreenState createState() => _JoinAsWorkshopOwnerScreenState();
}

class _JoinAsWorkshopOwnerScreenState extends State<JoinAsWorkshopOwnerScreen> {
  List<String> city = ['A', 'B', 'C', 'D'];

  String _newCity;

  bool login = true;

  Future<void> _showDialog() async {
    return showDialog(
      context: context,
      builder: (context) {
        // Future.delayed(Duration(seconds: 5), () {
        //   Navigator.of(context).push(MaterialPageRoute(builder: (_) => CheckingRepHomeScreen()));
        // });
        return Container(
          decoration: BoxDecoration(
            color: Colors.grey,
          ),
          child: Column(
            children: [
              SizedBox(height: 100),
              Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                backgroundColor: Colors.white,
                insetPadding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 40,
                  bottom: MediaQuery.of(context).size.height / 20,
                  right: 10,
                  left: 10,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 15,
                          bottom: 20),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/icons/icon9.png'),
                        child: Image.asset('assets/icons/icon10.png'),
                      ),
                    ),
                    Text(
                      'يرجى الانتظار لحين مراجعة \n بياناتك من قبل الإدارة \n وسيتم التواصل معك على \n الرقم المسجل',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30,right: 30,top: 15),
                      child: defaultButton(
                        text: 'العودة للرئيسية',
                        color: Color(0xFF1C608D),
                        function: (){
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 35)),
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              ImageAndTitle(
                image: 'assets/images/car4.png',
                title: 'انضم كصاحب ورشة',
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Color(0xFFCCCCCC),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              login = true;
                            });
                          },
                          child: Container(
                            child: Center(
                              child: Text(
                                'التسجيل',
                                style: TextStyle(
                                  color: login
                                      ? Color(0xFF3192D9)
                                      : Color(0xFFA2A2A2),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 2,
                        height: 35,
                        color: Color(0xFFCCCCCC),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              login = false;
                            });
                          },
                          child: Container(
                            child: Center(
                              child: Text(
                                'الخدمات',
                                style: TextStyle(
                                  color: login
                                      ? Color(0xFFA2A2A2)
                                      : Color(0xFF3192D9),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  width: double.infinity,
                  height: login ? 650 : 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFFF8F8F8),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 30, right: 30, top: 20),
                    child: login
                        ? Column(
                      children: [
                        _title(
                          title: 'اسم الورشة',
                        ),
                        inputField(
                          icon: true,
                          onChanged: (_) {},
                          validate: (_) {},
                          onSave: (_) {},
                          secure: false,
                          // prefix: Container(),
                          hint: '',
                          textInputType: TextInputType.name,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        _title(
                          title: 'اسم صاحب الورشة',
                        ),
                        inputField(
                          icon: true,
                          onChanged: (_) {},
                          validate: (_) {},
                          onSave: (_) {},
                          secure: false,
                          // prefix: Container(),
                          hint: '',
                          textInputType: TextInputType.name,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        _title(
                          title: 'المدينة',
                        ),
                        Container(
                          height: 46,
                          padding: EdgeInsets.only(left: 15, right: 15),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
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
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        _title(
                          title: 'عنوان الورشة',
                        ),
                        Container(
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xFFFFFFFF),
                          ),
                          child: inputField(
                            icon: true,
                            onChanged: (_) {},
                            validate: (_) {},
                            onSave: (_) {},
                            secure: false,
                            // prefix: Container(),
                            hint: 'عنوان الورشة',
                            textInputType: TextInputType.text,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        inputField(
                          icon: true,
                          onChanged: (_) {},
                          validate: (_) {},
                          onSave: (_) {},
                          secure: false,
                          hint: 'عنوان الورشة على الخريطة',
                          textInputType: TextInputType.number,
                          prefix: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Color(0xFF1C608D),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Icon(Icons.location_on,color: Colors.white,),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        _title(
                          title: 'رقم الهاتف',
                        ),
                        inputField(
                          icon: true,
                          onChanged: (_) {},
                          validate: (_) {},
                          onSave: (_) {},
                          secure: false,
                          hint: 'اكتب رقم هاتفك هنا',
                          textInputType: TextInputType.number,
                          prefix: Container(
                            width: MediaQuery.of(context).size.width * 0.1,
                            child: Row(
                              children: [
                                Container(
                                  height: 25,
                                  width: 2,
                                  color: Colors.grey[300],
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  '966+',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.grey[300],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        defaultButton(
                          color: Color(0xFF1C608D),
                          text: 'استمرار',
                          function: () {
                            setState(() {
                              login = false;
                            });
                          },
                        ),
                      ],
                    )
                        : Column(
                      children: [
                        ServiceListTitle(
                          title: 'فحص كمبيوتر',
                          image: 'assets/icons/icon4.png',
                        ),
                        ServiceListTitle(
                          title: 'فحص بادى',
                          image: 'assets/icons/icon5.png',
                        ),
                        ServiceListTitle(
                          title: 'فحص محرك',
                          image: 'assets/icons/icon6.png',
                        ),
                        ServiceListTitle(
                          title: 'فحص كمبيوتر',
                          image: 'assets/icons/icon7.png',
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        defaultButton(
                          color: Color(0xFF1C608D),
                          text: 'استمرار',
                          function: () {
                            _showDialog();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
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
              color: Color(0xFFBFBFBF),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
