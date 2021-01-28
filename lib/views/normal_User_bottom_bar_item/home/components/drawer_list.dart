import 'package:flutter/material.dart';
import 'package:muharek_app/views/setting/normal_user_setting.dart';


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
            // Navigator.of(context).pop();
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (_) => NormalUserSetting(),
            //   ),
            // );
          },
        ),
        ServiceDrawerList(
          title: 'الرسائل',
          image: 'assets/icons/icon17.png',
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
          title: 'اعلاناتى',
          image: 'assets/icons/icon21.png',
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
          title: 'المفضله',
          image: 'assets/icons/icon18.png',
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
          title: 'التنبيهات',
          image: 'assets/icons/icon19.png',
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
            // Navigator.of(context).pop();
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (_) => NormalUserSetting(),
            //   ),
            // );
          },
        ),
        ServiceDrawerList(
          title: 'عن محرك',
          image: 'assets/icons/icon22.png',
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
          title: 'دفع العموله',
          image: 'assets/icons/icon23.png',
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
          title: 'تواصل معنا',
          image: 'assets/icons/icon24.png',
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
          height: 10,
        ),
      ],
    ),
  );
}

class ServiceDrawerList extends StatefulWidget {
  const ServiceDrawerList({
    Key key,
    this.title,
    this.image, this.onTap,
  }) : super(key: key);
  final String title, image;
  final Function onTap;

  @override
  _ServiceListState createState() => _ServiceListState();
}

class _ServiceListState extends State<ServiceDrawerList> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: widget.onTap,
      contentPadding: EdgeInsets.only(left: 10),
      title: Text(
        widget.title,
        style: TextStyle(
          fontSize: 14,
          color: Color(0xFFA2A2A2),
        ),
      ),
      leading: Padding(
        padding: EdgeInsets.only(right: 20),
        child: Container(
          height: 36,
          width: 36,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Image.asset(
              widget.image,
              height: 30,
              width: 30,
            ),
          ),
        ),
      ),
    );
  }
}
