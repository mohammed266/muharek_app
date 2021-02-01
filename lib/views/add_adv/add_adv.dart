import 'package:flutter/material.dart';
import 'package:material_segmented_control/material_segmented_control.dart';
import 'package:muharek_app/shared/components/component.dart';
import 'package:muharek_app/views/normal_user_home/normal_user_home_screen.dart';

class AddAdvScreen extends StatefulWidget {
  @override
  _AddAdvScreenState createState() => _AddAdvScreenState();
}

class _AddAdvScreenState extends State<AddAdvScreen> {
  int _currentSelection = 0;

  Map<int, Widget> _children = {
    0: Text(
      'اتفاقية العمولة',
      style: TextStyle(fontSize: 12),
    ),
    1: Text(
      'تصنيف الاعلان',
      style: TextStyle(fontSize: 12),
    ),
    2: Text(
      'معلومات اضافية',
      style: TextStyle(fontSize: 12),
    ),
  };

  Map<int, Widget> icons = <int, Widget>{
    0: Center(
      child: CommissionAgreement(),
    ),
    1: Center(
      child: AdvRating(),
    ),
    2: Center(
      child: ExtraInfo(),
    ),
  };

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(context),
        body: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            MaterialSegmentedControl(
              children: _children,
              selectionIndex: _currentSelection,
              borderColor: Colors.grey,
              selectedColor: Color(0xFF3192D9),
              unselectedColor: Colors.white,
              borderRadius: 32.0,
              disabledChildren: [
                3,
              ],
              onSegmentChosen: (index) {
                setState(() {
                  _currentSelection = index;
                });
              },
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: icons[_currentSelection],
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        'إضافة اعلان',
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

class CommissionAgreement extends StatefulWidget {
  @override
  _CommissionAgreementState createState() => _CommissionAgreementState();
}

class _CommissionAgreementState extends State<CommissionAgreement> {
  bool checkboxValue1 = false;
  bool checkboxValue2 = false;
  bool checkboxValue3 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 1.1,
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            Text(
              'بسم الله الرحمن الرحيم \n قال الله تعالى " وَأَوْفُوا بِعَهْدِ اللَّهِ إِذَا عَاهَدتُّمْ وَلَا تَنقُضُوا \n الْأَيْمَانَ بَعْدَ تَوْكِيدِهَا وَقَدْ جَعَلْتُمُ اللَّهَ عَلَيْكُمْ كَفِيلًا ۚ \n إِنَّ اللَّهَ يَعْلَمُ مَا تَفْعَلُونَ  \n صدق الله العظيم',
              style: TextStyle(fontSize: 12),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Container(
                  height: 135,
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    height: 120,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFFCFCFC),
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Text(
                      '‎كما هو مذكور في معاهدة استخدام التطبيق، فإن التطبيق يحصل على عمولة من سعر السلعة المباعة عن طريق التطبيق و يدفعها .المعلن، وهي أمانه في ذمته',
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: MediaQuery.of(context).size.width * 0.39,
                  right: MediaQuery.of(context).size.width * 0.39,
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          checkboxValue1 = !checkboxValue1;
                        });
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:
                              checkboxValue1 ? Colors.green : Color(0xFFF8F8F8),
                        ),
                        child: Center(
                          child: checkboxValue1
                              ? Icon(
                                  Icons.check,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.check,
                                  color: Colors.grey,
                                ),
                        ),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Container(
                  height: 135,
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    height: 120,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFFCFCFC),
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Text(
                      '‎‎أتعهد أنا المعلن أن جميع المعلومات التي سوف أذكرها بالإعلان صحيحة وفي القسم الصحيح وأتعهد أن الصور التي سوف يتم عرضها هي صور حديثة لنفس السلعة وليست لسلعة أخرى .مشابهه',
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: MediaQuery.of(context).size.width * 0.39,
                  right: MediaQuery.of(context).size.width * 0.39,
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          checkboxValue2 = !checkboxValue2;
                        });
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:
                              checkboxValue2 ? Colors.green : Color(0xFFF8F8F8),
                        ),
                        child: Center(
                          child: checkboxValue2
                              ? Icon(
                                  Icons.check,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.check,
                                  color: Colors.grey,
                                ),
                        ),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Container(
                  height: 105,
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    height: 90,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFFCFCFC),
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Text(
                      '‎أتعهد انا المعلن أن أقوم بدفع العمولة خلال أقل من 10 أيام من تاريخ بيع السلعة',
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: MediaQuery.of(context).size.width * 0.39,
                  right: MediaQuery.of(context).size.width * 0.39,
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          checkboxValue3 = !checkboxValue3;
                        });
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:
                              checkboxValue3 ? Colors.green : Color(0xFFF8F8F8),
                        ),
                        child: Center(
                          child: checkboxValue3
                              ? Icon(
                                  Icons.check,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.check,
                                  color: Colors.grey,
                                ),
                        ),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            defaultButton(
              text: 'استمرار',
              color: Color(0xFF3192D9),
              function: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class AdvRating extends StatefulWidget {
  @override
  _AdvRatingState createState() => _AdvRatingState();
}

class _AdvRatingState extends State<AdvRating> {
  List<String> section = ['A', 'B', 'C', 'D'];
  List<String> subSection = ['A', 'B', 'C', 'D'];
  List<String> carType = ['A', 'B', 'C', 'D'];
  List<String> carModel = ['A', 'B', 'C', 'D'];
  List<String> madeYear1 = ['A', 'B', 'C', 'D'];
  List<String> gearType = ['A', 'B'];
  List<String> sortAs = ['A', 'B', 'C', 'D'];

  String _newSection;
  String _newSubSection;
  String _newCarType;
  String _newCarModel;
  String _newMadeYear1;
  String _newGearType;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 1.8,
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 70,
              child: Stack(
                children: [
                  _title(
                    title: 'عنوان الاعلان',
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Icon(
                        Icons.star,
                        color: Colors.red,
                        size: 7,
                      )),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Color(0xFFF8F8F8),
              ),
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                  hintText: 'اكتب عنوان للاعلان',
                  hintStyle: TextStyle(fontSize: 12, color: Color(0xFF707070)),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 40,
              child: Stack(
                children: [
                  _title(
                    title: 'القسم',
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Icon(
                        Icons.star,
                        color: Colors.red,
                        size: 7,
                      )),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Color(0xFFF8F8F8),
              ),
              child: DropdownButton<String>(
                items: section.map((String value) {
                  return new DropdownMenuItem<String>(
                    value: value,
                    child: new Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _newSection = newValue;
                  });
                },
                value: _newSection,
                isExpanded: true,
                hint: Text(
                  'سيارات ومركبات',
                  style: TextStyle(fontSize: 12, color: Color(0xFFBFBFBF)),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 70,
              child: Stack(
                children: [
                  _title(
                    title: 'القسم الفرعى',
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Icon(
                        Icons.star,
                        color: Colors.red,
                        size: 7,
                      )),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Color(0xFFF8F8F8),
              ),
              child: DropdownButton<String>(
                items: subSection.map((String value) {
                  return new DropdownMenuItem<String>(
                    value: value,
                    child: new Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _newSubSection = newValue;
                  });
                },
                value: _newSubSection,
                isExpanded: true,
                hint: Text(
                  'جديدة',
                  style: TextStyle(fontSize: 12, color: Color(0xFFBFBFBF)),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 60,
                        child: Stack(
                          children: [
                            _title(
                              title: 'نوع السيارة',
                            ),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Icon(
                                  Icons.star,
                                  color: Colors.red,
                                  size: 7,
                                )),
                          ],
                        ),
                      ),
                      Container(
                        height: 42,
                        padding: EdgeInsets.only(left: 15, right: 15),
                        decoration: BoxDecoration(
                          color: Color(0xFFF8F8F8),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: DropdownButton<String>(
                          items: carType.map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(value),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              _newCarType = newValue;
                            });
                          },
                          value: _newCarType,
                          isExpanded: true,
                          hint: Text(
                            'مثال تويوتا',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFFBFBFBF)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 70,
                        child: Stack(
                          children: [
                            _title(
                              title: 'موديل السيارة',
                            ),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Icon(
                                  Icons.star,
                                  color: Colors.red,
                                  size: 7,
                                )),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        height: 42,
                        decoration: BoxDecoration(
                          color: Color(0xFFF8F8F8),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: DropdownButton<String>(
                          items: carModel.map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(value),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              _newCarModel = newValue;
                            });
                          },
                          value: _newCarModel,
                          isExpanded: true,
                          hint: Text(
                            'مثال يارس',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFFBFBFBF)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 60,
                        child: Stack(
                          children: [
                            _title(
                              title: 'سنة الصنع',
                            ),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Icon(
                                  Icons.star,
                                  color: Colors.red,
                                  size: 7,
                                )),
                          ],
                        ),
                      ),
                      Container(
                        height: 42,
                        padding: EdgeInsets.only(left: 15, right: 15),
                        decoration: BoxDecoration(
                          color: Color(0xFFF8F8F8),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: DropdownButton<String>(
                          items: madeYear1.map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(value),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              _newMadeYear1 = newValue;
                            });
                          },
                          value: _newMadeYear1,
                          isExpanded: true,
                          hint: Text(
                            'مثال 2018',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFFBFBFBF)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 60,
                        child: Stack(
                          children: [
                            _title(
                              title: 'نوع الجير',
                            ),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Icon(
                                  Icons.star,
                                  color: Colors.red,
                                  size: 7,
                                )),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        height: 42,
                        decoration: BoxDecoration(
                          color: Color(0xFFF8F8F8),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: DropdownButton<String>(
                          items: gearType.map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(value),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              _newGearType = newValue;
                            });
                          },
                          value: _newGearType,
                          isExpanded: true,
                          hint: Text(
                            'مثال اوتوماتيك',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFFBFBFBF)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 70,
              child: Stack(
                children: [
                  _title(
                    title: 'وصف الاعلان',
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Icon(
                        Icons.star,
                        color: Colors.red,
                        size: 7,
                      )),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Color(0xFFF8F8F8),
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
              height: 15,
            ),
            Container(
              width: 40,
              child: Stack(
                children: [
                  _title(
                    title: 'السعر',
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Icon(
                        Icons.star,
                        color: Colors.red,
                        size: 7,
                      )),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Color(0xFFF8F8F8),
              ),
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                  hintText: 'السعر',
                  hintStyle: TextStyle(fontSize: 12, color: Color(0xFF707070)),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 65,
              child: Stack(
                children: [
                  _title(
                    title: 'اضافة صور',
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Icon(
                        Icons.star,
                        color: Colors.red,
                        size: 7,
                      )),
                ],
              ),
            ),
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/image18.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      print('kkk');
                    },
                    child: Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey,
                        ),
                        child: Icon(
                          Icons.close,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xFFF8F8F8),
                    image: DecorationImage(
                      image: AssetImage('assets/images/image20.png'),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          print('kkk');
                        },
                        child: Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey,
                            ),
                            child: Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 10,
                            )),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xFFF8F8F8),
                  ),
                  child: Image.asset('assets/images/image19.png'),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xFFF8F8F8),
                  ),
                  child: Image.asset('assets/images/image19.png'),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xFFF8F8F8),
                  ),
                  child: Image.asset('assets/images/image19.png'),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xFFF8F8F8),
                  ),
                  child: Image.asset('assets/images/image19.png'),
                ),
                InkWell(
                  onTap: () {
                    print('ss');
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xFFF8F8F8),
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            defaultButton(
              text: 'استمرار',
              color: Color(0xFF3192D9),
              function: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _title({String title}) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Color(0xFF4C5264),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

class ExtraInfo extends StatefulWidget {
  @override
  _ExtraInfoState createState() => _ExtraInfoState();
}

class _ExtraInfoState extends State<ExtraInfo> {
  List<String> city = ['A', 'B', 'C', 'D'];

  List<String> showNum = ['A', 'B'];

  List<String> showCom = ['A', 'B'];

  List<String> shareLocation = ['A', 'B'];

  String _newCity;

  String _newShowNum;

  String _newShowCom;

  String _newShareLocation;

  Future<void> _showDialog() async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Column(
              children: [
                SizedBox(height: 100),
                Dialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: Color(0xFFFFFFFF),
                  insetPadding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 20,
                    bottom: MediaQuery.of(context).size.height / 20,
                    right: 10,
                    left: 10,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        'assets/images/image21.png',
                        height: 70,
                        width: 100,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'تم إضافة الإعلان \n بنجاح',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                    color: Color(0xFF2777B2),
                                  ),
                                ),
                                child: Center(
                                    child: Text(
                                  'مشاهدة الاعلان',
                                  style: TextStyle(
                                    color: Color(0xFF2777B2),
                                    fontSize: 12,
                                  ),
                                )),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (_) =>
                                          HomeScreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(
                                      color: Color(0xFF2777B2),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'الذهاب للرئيسية',
                                      style: TextStyle(
                                        color: Color(0xFF2777B2),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 50)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.75,
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            _title(
              title: 'المدينة',
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Color(0xFFF8F8F8),
              ),
              child: DropdownButton<String>(
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
                hint: Text(
                  'الرياض',
                  style: TextStyle(fontSize: 12, color: Color(0xFFBFBFBF)),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            _title(
              title: 'اظهار رقم الجوال',
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Color(0xFFF8F8F8),
              ),
              child: DropdownButton<String>(
                items: showNum.map((String value) {
                  return new DropdownMenuItem<String>(
                    value: value,
                    child: new Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _newShowNum = newValue;
                  });
                },
                value: _newShowNum,
                isExpanded: true,
                hint: Text(
                  'نعم',
                  style: TextStyle(fontSize: 12, color: Color(0xFFBFBFBF)),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            _title(
              title: 'السماح بالتعليقات',
            ),
            Container(
              height: 40,
              padding: EdgeInsets.only(left: 15, right: 15),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Color(0xFFF8F8F8),
              ),
              child: DropdownButton<String>(
                items: showCom.map((String value) {
                  return new DropdownMenuItem<String>(
                    value: value,
                    child: new Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _newShowCom = newValue;
                  });
                },
                value: _newShowCom,
                isExpanded: true,
                hint: Text(
                  'نعم',
                  style: TextStyle(fontSize: 12, color: Color(0xFFBFBFBF)),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            _title(
              title: 'السماح بمشاركة موقعى مع المستخدمين',
            ),
            Container(
              height: 40,
              padding: EdgeInsets.only(left: 15, right: 15),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Color(0xFFF8F8F8),
              ),
              child: DropdownButton<String>(
                items: shareLocation.map((String value) {
                  return new DropdownMenuItem<String>(
                    value: value,
                    child: new Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _newShareLocation = newValue;
                  });
                },
                value: _newShareLocation,
                isExpanded: true,
                hint: Text(
                  'نعم',
                  style: TextStyle(fontSize: 12, color: Color(0xFFBFBFBF)),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            defaultButton(
              text: 'إضافة الاعلان',
              color: Color(0xFF3192D9),
              function: () {
                _showDialog();
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _title({String title}) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Color(0xFF4C5264),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
