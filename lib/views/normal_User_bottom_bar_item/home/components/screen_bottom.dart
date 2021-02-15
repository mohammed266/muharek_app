import 'package:flutter/material.dart';
import 'package:muharek_app/shared/components/component.dart';
import 'package:muharek_app/views/normal_User_bottom_bar_item/home/components/service_title.dart';
import 'package:muharek_app/views/screening_service_after_choice/screening_service_after_choice.dart';


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
                Navigator.push(context,
                  MaterialPageRoute(builder: (_) =>
                      ScreeningServiceAfterChoice(),
                  ),
                );
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

