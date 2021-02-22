import 'package:flutter/material.dart';
import '../../../shared/components/component.dart';


class AdvRating extends StatefulWidget {
  const AdvRating({
    Key key,
    this.onSegmentChosen1,
  }) : super(key: key);

  final Function onSegmentChosen1;
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
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
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
                  underline: Text(''),
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
                  underline: Text(''),
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
                            underline: Text(''),
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
                            underline: Text(''),
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
                            underline: Text(''),
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
                            underline: Text(''),
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
              Padding(
                padding: EdgeInsets.only(left: 50,right: 50),
                child: defaultButton(
                  text: 'استمرار',
                  color: Color(0xFF1C608D),
                  function: () {
                    setState(() {
                      widget.onSegmentChosen1();
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ],
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
