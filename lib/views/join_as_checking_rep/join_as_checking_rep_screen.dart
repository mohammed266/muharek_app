import 'package:flutter/material.dart';
import '../../shared/components/component.dart';
import '../checking_rep_user/checking_rep_home/checking_rep_home_screen.dart';

class CheckingRepScreen extends StatefulWidget {
  @override
  _CheckingRepScreenState createState() => _CheckingRepScreenState();
}

class _CheckingRepScreenState extends State<CheckingRepScreen> {


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

  List<String> city = ['A', 'B', 'C', 'D'];
  String _newCity;
  bool login = true;

  Future<void> _showDialog() async {
    return showDialog(
        context: context,
        builder: (context) {
          Future.delayed(Duration(seconds: 5), () {
            Navigator.of(context).push(MaterialPageRoute(builder: (_) => CheckingRepHomeScreen()));
          });
          return Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height* 0.25),
                Dialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Colors.white,
                  insetPadding: EdgeInsets.only(
                    top: 10,
                    bottom: 10,
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
                        'يرجى الانتظار لحين \n مراجعة بياناتك من قبل \n الادارة',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Padding(padding: EdgeInsets.only(top: 70)),
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
          child: GestureDetector(
            onTap: (){
              FocusScope.of(context).requestFocus(new FocusNode());
            },
            child: Column(
              children: [
                ImageAndTitle(
                  image: 'assets/images/car4.png',
                  title: 'انضم كمندوب فحص',
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
                    height: login ? 550 : 350,
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
                                  title: 'الاسم',
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
                                  title: 'صورة شخصية',
                                ),
                                inputField(
                                  icon: true,
                                  onChanged: (_) {},
                                  validate: (_) {},
                                  onSave: (_) {},
                                  secure: false,
                                  // prefix: Container(),
                                  hint: '',
                                  textInputType: TextInputType.text,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                _title(
                                  title: 'صورة الهوية',
                                ),
                                inputField(
                                  icon: true,
                                  onChanged: (_) {},
                                  validate: (_) {},
                                  onSave: (_) {},
                                  secure: false,
                                  // prefix: Container(),
                                  hint: '',
                                  textInputType: TextInputType.text,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                _title(
                                  title: 'رقم الهوية',
                                ),
                                inputField(
                                  icon: true,
                                  onChanged: (_) {},
                                  validate: (_) {},
                                  onSave: (_) {},
                                  secure: false,
                                  // prefix: Container(),
                                  hint: '',
                                  textInputType: TextInputType.number,
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                defaultButton(
                                  color: Color(0xFF3192D9),
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
                                  color: Color(0xFF3192D9),
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
      ),
    );
  }
}


