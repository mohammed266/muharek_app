import 'package:flutter/material.dart';
import '../../drawer_item/about_mouharek/about_mouharek.dart';
import '../../drawer_item/contact_us/contact_us.dart';
import '../../drawer_item/setting/normal_user_setting.dart';
import '../../../shared/components/component.dart';
import '../drawer_item_rep/Join_as_workshop_owner/join_as_workshop_owner.dart';
import '../drawer_item_rep/alerts/alerts_rep.dart';
import '../drawer_item_rep/financial_movements/financial_movements.dart';
import '../drawer_item_rep/orders/orders.dart';

class DrawerListRep extends StatefulWidget {
  @override
  _DrawerListRepState createState() => _DrawerListRepState();
}

class _DrawerListRepState extends State<DrawerListRep> {
  bool _enabled = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.5,
      color: Color(0xFFFCFCFC),
      child: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  width: 67,
                  height: 67,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Icon(Icons.photo_camera_outlined),
                  ),
                ),
              ),
              Text(
                'كابتن عبود الجابر',
                style: TextStyle(fontSize: 12, color: Color(0xFF555555)),
              ),
              Text(
                '1234567890',
                style: TextStyle(fontSize: 11, color: Color(0xFF2777B2)),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _enabled = !_enabled;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(2),
                  height: 30,
                  width: 75,
                  decoration: BoxDecoration(
                    color: _enabled ? Color(0xFF0BC50017) : Color(0xFF0BC50017),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: _enabled
                      ? Row(
                          children: [
                            Spacer(),
                            Text(
                              'غير متاح',
                              style: TextStyle(
                                  fontSize: 10, color: Color(0xFFFF5A5A)),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              height: 27,
                              width: 27,
                              decoration: BoxDecoration(
                                color: _enabled ? Colors.red : Colors.green,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Icon(
                                Icons.power_settings_new,
                                color: Colors.white,
                                size: 16,
                              ),
                            ),
                          ],
                        )
                      : Row(
                          children: [
                            Container(
                              height: 27,
                              width: 27,
                              decoration: BoxDecoration(
                                color: _enabled ? Colors.red : Colors.green,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Icon(
                                Icons.power_settings_new,
                                color: Colors.white,
                                size: 16,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'متاح',
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xFF0BC500),
                              ),
                            ),
                            Spacer(),
                          ],
                        ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          ServiceDrawerList(
            title: 'الطلبات',
            image: 'assets/icons/icon29.png',
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => OrdersScreen(),
                ),
              );
            },
          ),
          ServiceDrawerList(
            title: 'التنبيهات',
            image: 'assets/icons/icon19.png',
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => AlertsRepScreen(),
                ),
              );
            },
          ),
          ServiceDrawerList(
            title: 'الحركات الماليه',
            image: 'assets/icons/icon23.png',
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => FinancialMovementsScreen(),
                ),
              );
            },
          ),
          //
          ServiceDrawerList(
            title: 'الاعدادات',
            image: 'assets/icons/icon20.png',
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => NormalUserSetting(),
                ),
              );
            },
          ),
          ServiceDrawerList(
            title: 'الدعم الفنى',
            image: 'assets/icons/icon27.png',
            onTap: () {
              Navigator.of(context).pop();
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (_) => TechnicalSupportScreen(),
              //   ),
              // );
            },
          ),
          ServiceDrawerList(
            title: 'عن محرك',
            image: 'assets/icons/icon22.png',
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => AboutMouharekScreen(),
                ),
              );
            },
          ),
          ServiceDrawerList(
            title: 'تواصل معنا',
            image: 'assets/icons/icon24.png',
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => ContactUsScreen(),
                ),
              );
            },
          ),
          ServiceDrawerList(
            title: 'شارك التطبيق',
            image: 'assets/icons/icon25.png',
            onTap: () {
              // Navigator.of(context).pop();
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (_) => NormalUserSetting(),
              //   ),
              // );
            },
          ),
          ServiceDrawerList(
            title: 'اشترك كصاحب ورشه',
            image: 'assets/icons/icon26.png',
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => JoinAsWorkshopOwnerScreen(),
                ),
              );
            },
          ),
          ServiceDrawerList(
            title: 'تسجيل الخروج',
            image: 'assets/icons/icon28.png',
            onTap: () {
              // Navigator.of(context).pop();
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (_) => NormalUserSetting(),
              //   ),
              // );
            },
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
