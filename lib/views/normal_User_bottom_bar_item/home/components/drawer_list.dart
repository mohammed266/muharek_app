import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../shared/components/component.dart';
import '../../../drawer_item/about_mouharek/about_mouharek.dart';
import '../../../drawer_item/alerts/alerts.dart';
import '../../../drawer_item/contact_us/contact_us.dart';
import '../../../drawer_item/messages/messages.dart';
import '../../../drawer_item/my_adv/my_adv.dart';
import '../../../drawer_item/my_fav/my_fav.dart';
import '../../../drawer_item/my_orders/my_orders.dart';
import '../../../drawer_item/pay_commission/pay_commission.dart';
import '../../../drawer_item/setting/normal_user_setting.dart';
import '../../../drawer_item/technical_support/technical_support.dart';


Widget drawerList(BuildContext context) {
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
                width:67,
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
            InkWell(
              onTap: (){
                print('33');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('محمد على',style: TextStyle(fontSize: 12,color: Color(0xFF555555)),),
                  Icon(Icons.edit,size: 15,color: Color(0xFF555555)),
                ],
              ),
            ),
            Text('1234567890',style: TextStyle(fontSize: 11,color: Color(0xFF2777B2)),),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        ServiceDrawerList(
          title: 'طلباتى',
          image: 'assets/icons/icon29.png',
          onTap: (){
            Navigator.of(context).pop();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => MyOrdersScreen(),
              ),
            );
          },
        ),
         ServiceDrawerList(
          title: 'الرسائل',
          image: 'assets/icons/icon17.png',
          onTap: (){
            Navigator.of(context).pop();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => MessagesScreen(),
              ),
            );
          },
        ),
        ServiceDrawerList(
          title: 'اعلاناتى',
          image: 'assets/icons/icon21.png',
          onTap: (){
            Navigator.of(context).pop();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => MyAdvScreen(),
              ),
            );
          },
        ),
        ServiceDrawerList(
          title: 'المفضله',
          image: 'assets/icons/icon18.png',
          onTap: (){
            Navigator.of(context).pop();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => MyFavScreen(),
              ),
            );
          },
        ),
        ServiceDrawerList(
          title: 'التنبيهات',
          image: 'assets/icons/icon19.png',
          onTap: (){
            Navigator.of(context).pop();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => AlertsScreen(),
              ),
            );
          },
        ),
        ServiceDrawerList(
          title: 'الاعدادات',
          image: 'assets/icons/icon20.png',
          onTap: (){
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
          onTap: (){
            Navigator.of(context).pop();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => TechnicalSupportScreen(),
              ),
            );
          },
        ),
        ServiceDrawerList(
          title: 'عن محرك',
          image: 'assets/icons/icon22.png',
          onTap: (){
            Navigator.of(context).pop();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => AboutMouharekScreen(),
              ),
            );
          },
        ),
        ServiceDrawerList(
          title: 'دفع العموله',
          image: 'assets/icons/icon23.png',
          onTap: (){
            Navigator.of(context).pop();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) =>  PayCommissionScreen(),
              ),
            );
          },
        ),
        ServiceDrawerList(
          title: 'تواصل معنا',
          image: 'assets/icons/icon24.png',
          onTap: (){
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
          onTap: (){
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
          onTap: (){
            // Navigator.of(context).pop();
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (_) => NormalUserSetting(),
            //   ),
            // );
          },
        ),
        ServiceDrawerList(
          title: 'تسجيل الخروج',
          image: 'assets/icons/icon28.png',
          onTap: (){
            // Navigator.of(context).pop();
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (_) => NormalUserSetting(),
            //   ),
            // );
          },
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height* 0.15,
          // 80,
        ),
      ],
    ),
  );
}


