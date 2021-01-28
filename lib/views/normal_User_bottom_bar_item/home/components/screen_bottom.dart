import 'package:flutter/material.dart';
import 'package:muharek_app/views/normal_User_bottom_bar_item/home/components/service_title.dart';


class ScreenBottom extends StatelessWidget {
  const ScreenBottom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ServiceTitle(
          image: 'assets/icons/icon31.png',
          title: 'خدمات الفحص',
          allService: '',
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            WorkshopContainer(
              title: 'فحص كمبيوتر',
              image: 'assets/icons/icon4.png',
              onTap: (){
                print('pp');
              },
            ),
            Spacer(),
            WorkshopContainer(
              title: 'فحص هيكل',
              image: 'assets/icons/icon5.png',
              onTap: (){
                print('pp');
              },
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            WorkshopContainer(
              title: 'فحص محرك',
              image: 'assets/icons/icon6.png',
              onTap: (){
                print('pp');
              },
            ),
            Spacer(),
            WorkshopContainer(
              title: 'فحص شامل',
              image: 'assets/icons/icon7.png',
              onTap: (){
                print('pp');
              },
            ),
          ],
        ),
        SizedBox(
          height: 25,
        ),
      ],
    );
  }
}

class WorkshopContainer extends StatelessWidget {
  const WorkshopContainer({
    Key key, this.image, this.title, this.onTap,
  }) : super(key: key);

  final String image,title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 150,
        width: MediaQuery.of(context).size.width / 2.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          border: Border.all(color: Color(0xFFDCDCDC)),
          color: Color(0xFFFCFCFC),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundImage:
              AssetImage('assets/icons/icon9.png'),
              child: Image.asset(image),
              radius: 26,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFF4C5264),
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}