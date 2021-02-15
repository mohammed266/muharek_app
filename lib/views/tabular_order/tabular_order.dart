import 'package:flutter/material.dart';
import '../../shared/components/component.dart';
import '../check/check.dart';

class TabularOrderScreen extends StatefulWidget {
  @override
  _TabularOrderScreenState createState() => _TabularOrderScreenState();
}

class _TabularOrderScreenState extends State<TabularOrderScreen> {
  final List _month = [
    {
      'name': 'يناير 2021',
    },
    {
      'name': 'فبراير 2021',
    },
    {
      'name': 'مارس 2021',
    },
    {
      'name': 'ابريل 2021',
    },
    {
      'name' : 'مايو 2021',
    },
    {
      'name' : 'يونيو 2021',
    },
  ];
  final List _day = [
    {
      'name': 'يناير 2021',
    },
    {
      'name': 'فبراير 2021',
    },
    {
      'name': 'مارس 2021',
    },
    {
      'name': 'ابريل 2021',
    },
    {
      'name' : 'مايو 2021',
    },
    {
      'name' : 'يونيو 2021',
    },
  ];
  final List _time = [
    {
      'name': '11:00am',
    },
    {
      'name': 'فبراير 2021',
    },
    {
      'name': 'مارس 2021',
    },
    {
      'name': 'ابريل 2021',
    },
    {
      'name' : 'مايو 2021',
    },
    {
      'name' : 'يونيو 2021',
    },
  ];

  @override
  void initState() {
    createVariables();
    createVariables1();
    createVariables2();
    super.initState();
  }

  List<bool> audioSelectedList = [];
  List<bool> audioSelectedList1 = [];
  List<bool> audioSelectedList2 = [];

  createVariables() {
    audioSelectedList = List.generate(_month.length, (i) => false);
  }
  createVariables1() {
    audioSelectedList1 = List.generate(_day.length, (i) => false);
  }
  createVariables2() {
    audioSelectedList2 = List.generate(_time.length, (i) => false);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                ),
                Title(
                  title: 'اختر الشهر',
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 40,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: _month.length,
                    itemBuilder: (_, i) => Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            createVariables();
                            audioSelectedList[i] = true;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 95,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: audioSelectedList[i] ? Color(0xFF3192D9): Color(0xFFF8F8F8),
                          ),
                          child: Center(
                            child: Text('${_month[i]['name']}',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: audioSelectedList[i] ? Colors.white : Color(0xFF4C5264),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Title(
                  title: 'اختر اليوم',
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 70,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: _day.length,
                    itemBuilder: (_, i) => Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            createVariables1();
                            audioSelectedList1[i] = true;
                          });
                        },
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: audioSelectedList1[i] ? Color(0xFF3192D9): Color(0xFFF8F8F8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('15 \n الثلاثاء',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: audioSelectedList1[i] ? Colors.white : Color(0xFF4C5264),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Title(
                  title: 'اختر الوقت المتاح',
                ),
                SizedBox(
                  height: 25,
                ),
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 2.5/1,
                  ),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: _time.length,
                  itemBuilder: (_, i) => GestureDetector(
                    onTap: (){
                      setState(() {
                        createVariables2();
                        audioSelectedList2[i] = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFF8F8F8),
                        border: Border.all(
                          color: audioSelectedList2[i] ? Color(0xFF3192D9):Color(0xFFF8F8F8),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: audioSelectedList2[i] ? Color(0xFF3192D9):Color(0xFFDCDCDC),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text('01:00pm',
                            style: TextStyle(
                              fontSize: 14,
                              color: audioSelectedList2[i] ? Color(0xFF3192D9):Color(0xFFDCDCDC),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30,right: 30),
                  child: defaultButton(
                    text: 'متابعه',
                    color: Color(0xFF1C608D),
                    function: (){
                      Navigator.push(context,
                        MaterialPageRoute(
                          builder: (_) => CheckScreen(),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 28,
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
        'طلب مجدول',
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

class Title extends StatelessWidget {
  const Title({
    Key key, this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color(0xFFF8F8F8)),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Color(0xFF555555),
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
