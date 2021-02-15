import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'setting_items/edite_personal_data/personal_data.dart';
import 'setting_items/my_adresses/my_adresses.dart';
import 'setting_items/my_cars/my_cars.dart';
import 'setting_items/payment_way/payment_way.dart';

class NormalUserSetting extends StatefulWidget {
  @override
  _NormalUserSettingState createState() => _NormalUserSettingState();
}

class _NormalUserSettingState extends State<NormalUserSetting> {
  @override
  Widget build(BuildContext context) {

    TextStyle _textStyle = TextStyle(
      fontSize: 14,
      color: Color(0xFF4C5264),
      fontWeight: FontWeight.w600,
    );
    void _modalBottomSheetMenu() {
      showModalBottomSheet(
          context: context,
          barrierColor: Colors.black26,
          backgroundColor: Color(0xFF00000080),
          builder: (builder) {
            return Container(
              height: 250.0,
              color:
                  Colors.transparent, //could change this to Color(0xFF737373),
              //so you don't have to change MaterialApp canvasColor
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(35.0),
                        topRight: const Radius.circular(35.0))),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          EasyLocalization.of(context).locale = Locale('ar', 'SA');
                        });
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 86,
                        width: double.infinity,
                        child: Center(
                            child: Text(
                          'اللغة العربية',
                          style: _textStyle,
                        )),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          EasyLocalization.of(context).locale = Locale('en', 'US');
                        });
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 89,
                        width: double.infinity,
                        child: Center(
                            child: Text(
                          'English',
                          style: _textStyle,
                        )),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                       Navigator.pop(context);
                      },
                      child: Container(
                        width: double.infinity,
                        height: 75,
                        decoration: BoxDecoration(
                          color: Color(0xFF1C608D),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            topLeft: Radius.circular(30),
                          ),
                        ),
                        child: Center(
                            child: Text(
                          'الغاء',
                          style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.w600,),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            );
          });
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 70,
          centerTitle: true,
          backgroundColor: Color(0xFFF8F8F8),
          elevation: 0.0,
          title: Text(
            'title'.tr().toString(),
            style: TextStyle(
              color: Color(0xFF4C5264),
            ),
          ),
          leading: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
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
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFFF8F8F8),
                ),
                child: ListTile(
                  onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (_) =>
                          PersonalDataScreen(),
                      ),
                    );
                  },
                  title: Text(
                    'personal data settings'.tr().toString(),
                    style: _textStyle,
                  ),
                  leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Image.asset('assets/icons/icon13.png')),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFFF8F8F8),
                ),
                child: ListTile(
                  onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (_) =>
                          PaymentWayScreen(),
                      ),
                    );
                  },
                  title: Text(
                    'payment methods'.tr().toString(),
                    style: _textStyle,
                  ),
                  leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Image.asset('assets/icons/icon14.png')),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFFF8F8F8),
                ),
                child: ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (_) => MyAddressesScreen(),
                    ),
                    );
                  },
                  title: Text(
                    'my addresses'.tr().toString(),
                    style: _textStyle,
                  ),
                  leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Image.asset('assets/icons/icon15.png')),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFFF8F8F8),
                ),
                child: ListTile(
                  onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(
                        builder: (_) =>  MyCarsScreen(),
                      ),
                    );
                  },
                  title: Text(
                    'my cars'.tr().toString(),
                    style: _textStyle,
                  ),
                  leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Image.asset('assets/icons/icon16.png')),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFFF8F8F8),
                ),
                child: ListTile(
                  onTap: () {
                    _modalBottomSheetMenu();
                  },
                  title: Text(
                    'the Language'.tr().toString(),
                    style: _textStyle,
                  ),
                  leading: Image.asset(
                    'assets/icons/icon12.png',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
