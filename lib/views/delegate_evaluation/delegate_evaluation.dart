import 'package:flutter/material.dart';
import '../../shared/components/component.dart';

class DelegateEvaluationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'رقم الطلب 25452154',
                  style: TextStyle(fontSize: 15, color: Color(0xFF4C5264)),
                ),
                SizedBox(
                  height: 30,
                ),
                Stack(
                  children: [
                    Container(
                      height: 190,
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                        height: 165,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: Color(0xFFF8F8F8),
                          border: Border.all(color: Color(0xFF3192D9)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'محمد إبراهيم محمد على عبد اللطيف',
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xFF555555)),
                            ),
                            Text(
                              'كابتن فحص',
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xFFA2A2A2)),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.star_rate,size: 16,),
                                Icon(Icons.star_rate,size: 16,),
                                Icon(Icons.star_rate,size: 16,),
                                Icon(Icons.star_rate,size: 16,),
                                Icon(Icons.star_rate,size: 16,),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        padding: EdgeInsets.all(7),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFFF8F8F8),
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Image.asset(
                          'assets/icons/icon41.png',
                          color: Color(0xFF1C608D),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'اختر تقيمك للمندوب',
                  style: TextStyle(fontSize: 15, color: Color(0xFF4C5264)),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RateContainer(
                      image: 'assets/icons/icon63.png',
                      text: 'ممتاز',
                    ),
                    RateContainer(
                      image: 'assets/icons/icon59.png',
                      text: 'جيد جدا',
                    ),
                    RateContainer(
                      image: 'assets/icons/icon60.png',
                      text: 'جيد',
                    ),
                    RateContainer(
                      image: 'assets/icons/icon62.png',
                      text: 'سئ',
                    ),
                    RateContainer(
                      image: 'assets/icons/icon61.png',
                      text: 'سئ جدا',
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'اكتب تعليقك على التجربة',
                  style: TextStyle(fontSize: 15, color: Color(0xFF393A3A)),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFDCDCDC),
                    ),
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      border: InputBorder.none,
                    ),
                    maxLines: 4,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40, right: 40),
                  child: defaultButton(
                    color: Color(0xFF1C608D),
                    function: () {},
                    text: 'ارسال',
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        'التقييم',
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

class RateContainer extends StatefulWidget {
  RateContainer({
    Key key,
    this.image,
    this.text,
  }) : super(key: key);
  final String image, text;
  // Color color = Color(0xFFB1B1B1);

  @override
  _RateContainerState createState() => _RateContainerState();
}

class _RateContainerState extends State<RateContainer> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Container(
        child: Column(
          children: [
            Image.asset(
              widget.image,
              height: 38,
              width: 38,
              color: selected ? Color(0xFF2777B2) : Color(0xFFB1B1B1),
            ),
            Text(widget.text,
                style: TextStyle(
                  fontSize: 10,
                  color: selected ? Color(0xFF2777B2) : Color(0xFFB1B1B1),
                )),
          ],
        ),
      ),
    );
  }
}
