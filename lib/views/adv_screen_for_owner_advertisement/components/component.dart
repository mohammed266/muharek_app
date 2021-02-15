import 'package:flutter/material.dart';
import '../../../shared/components/component.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: Container(
              width: double.infinity,
              height: 225,
              decoration: BoxDecoration(
                color: Color(0xFFFCFCFC),
                borderRadius: BorderRadius.circular(17),
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 15),
                    height: 40,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icons/icon16.png',
                          color: Color(0xFF3192D9),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'النوع',
                          style: _textStyle,
                        ),
                        Spacer(),
                        Text(
                          'بى ام دبليو',
                          style: _textStyle,
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 15),
                    height: 40,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icons/icon16.png',
                          color: Color(0xFF3192D9),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'موديل',
                          style: _textStyle,
                        ),
                        Spacer(),
                        Text(
                          'الفئة الخامسة',
                          style: _textStyle,
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 15),
                    height: 40,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Image.asset('assets/icons/icon42.png'),
                        Icon(
                          Icons.date_range,
                          color: Color(0xFF3192D9),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'السنة',
                          style: _textStyle,
                        ),
                        Spacer(),
                        Text(
                          '2015',
                          style: _textStyle,
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 15),
                    height: 40,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/icons/icon16.png'),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'ناقل الحركة',
                          style: _textStyle,
                        ),
                        Spacer(),
                        Text(
                          'اوتوماتيك',
                          style: _textStyle,
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 15),
                    height: 40,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/icons/icon16.png'),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'عدد الكيلو مترات',
                          style: _textStyle,
                        ),
                        Spacer(),
                        Text(
                          '250000',
                          style: _textStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text('الوصف', style: _textStyle),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.all(15),
            width: double.infinity,
            height: 140,
            decoration: BoxDecoration(
              color: Color(0xFFFCFCFC),
              borderRadius: BorderRadius.circular(17),
            ),
            child: Text(
              'هذا النص يمكن أن يتم تركيبه على أي تصميم دون مشكلة فلن يبدو وكأنه نص منسوخ، غير منظم، غير منسق، أو حتى غير مفهوم. لأنه مازال نصاً بديلاً ومؤقتاً.',
              style: _textStyle,
              maxLines: 5,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('البائع', style: _textStyle),
              InkWell(
                onTap: () {
                  //
                },
                child: Text(
                  'مشاهدة إعلانات البائع',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF3192D9),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Stack(
            children: [
              Container(
                height: 235,
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  width: double.infinity,
                  height: 210,
                  decoration: BoxDecoration(
                    color: Color(0xFFFCFCFC),
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 1,
                      ),
                      Text(
                        'محمد إبراهيم محمد على عبد اللطيف',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        'الرياض',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xFFA2A2A2)),
                      ),
                      Text(
                        'اخر اعلان بتاريخ 15 ديسمبر 2020',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xFFA2A2A2)),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                //
                              },
                              child: Container(
                                height: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Color(0xFF0BC500),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      'assets/icons/icon24.png',
                                      color: Colors.white,
                                    ),
                                    Text(
                                      'اتصال',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                //
                              },
                              child: Container(
                                height: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Color(0xFF555555),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      'assets/icons/icon17.png',
                                      color: Colors.white,
                                    ),
                                    Text(
                                      'محادثة',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 25,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          defaultButton(
            text: 'طلب فحص كمبيوتر',
            color: Color(0xFF3192D9),
            function: () {
              //
            },
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }

  TextStyle _textStyle = TextStyle(
    fontSize: 15,
    color: Color(0xFFA2A2A2),
  );
}

class Comments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'إضافة تعليق',
            style: TextStyle(fontSize: 12, color: Color(0xFF707070)),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              color: Color(0xFFFCFCFC),
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
              maxLines: 4,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          defaultButton(
            text: 'اضف تعليق',
            color: Color(0xFF3192D9),
            function: () {
              //
            },
          ),
          SizedBox(
            height: 30,
          ),
          ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (_, i) => Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Container(
                child: Column(
                  children: [
                    Container(
                      height: 65,
                      child: ListTile(
                        title: Text(
                          'محمد حسن ابراهيم',
                          style: TextStyle(fontSize: 12),
                        ),
                        subtitle: Text(
                          '05:20 am',
                          style: TextStyle(fontSize: 12),
                        ),
                        leading: CircleAvatar(
                          radius: 20,
                        ),
                        trailing: Text(
                          '‏15-10-2020',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 20, top: 5),
                      height: 35,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                        ),
                        color: Color(0xFFFCFCFC),
                      ),
                      child: Text(
                        'سيارة جميلة بس السعر مبالغ فيه',
                        style: TextStyle(fontSize: 12, color: Color(0xFF707070)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class SameAds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          Container(
            height: 160,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (_, i) => Padding(
                padding: EdgeInsets.only(left: 10, bottom: 15),
                child: Container(
                  // height: 160,
                  width: MediaQuery.of(context).size.width / 1.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    image: DecorationImage(
                      image: AssetImage('assets/images/image14.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color(0xFF000000).withOpacity(.5),
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {
                                  print('22');
                                },
                                child: Image.asset('assets/icons/icon35.png'),
                              ),
                              Text(
                                'تويوتا لاندكروزر',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '2005',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.place,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                  Text(
                                    'الرياض',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.watch_later_outlined,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'منذ10ساعة',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, bottom: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {
                                  print('oo');
                                },
                                child: Container(
                                  height: 20,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF2777B2),
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(7),
                                      bottomLeft: Radius.circular(7),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '5',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Icon(
                                        Icons.photo,
                                        color: Colors.white,
                                        size: 12,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Spacer(),
                              Text(
                                '‏75000 ر.س',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
