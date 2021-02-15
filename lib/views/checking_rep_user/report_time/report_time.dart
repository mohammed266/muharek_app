import 'package:flutter/material.dart';

class ReportTimeScreen extends StatefulWidget {
  @override
  _ReportTimeScreenState createState() => _ReportTimeScreenState();
}

class _ReportTimeScreenState extends State<ReportTimeScreen> {
  // List<Paint> paints = <Paint>[
  //   Paint(1, 'Red', Colors.red),
  //   Paint(2, 'Blue', Colors.blue),
  //   Paint(3, 'Green', Colors.green),
  //   Paint(4, 'Lime', Colors.lime),
  //   Paint(5, 'Indigo', Colors.indigo),
  //   Paint(6, 'Yellow', Colors.yellow)
  // ];
  final List _time = [
    {
      'name': 'جميع التواريخ',
    },
    {
      'name': 'اليوم',
    },
    {
      'name': 'الامس',
    },
    {
      'name': 'الأسبوع الحالى',
    },
    {
      'name' : 'الاسبوع الماضى',
    },
    {
      'name' : 'الشهر الحالى',
    },
    {
      'name' : 'الشهر الماضي',
    },
  ];
   List<bool> _isSelected = [];
   @override
  void initState() {
     createVariables();
    super.initState();
  }
  createVariables() {
    _isSelected = List.generate(_time.length, (i) => false);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  width: double.infinity,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Color(0xFFFCFCFC),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icons/icon58.png',
                        height: 15,
                        width: 14,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'فترة مخصصة',
                        style:
                            TextStyle(fontSize: 13, color: Color(0xFF2B2F3B)),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          //
                        },
                        child: Container(
                          height: 59,
                          decoration: BoxDecoration(
                            color: Color(0xFFF8F8F8),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'تاريخ البدء',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xFFDCDCDC)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          //
                        },
                        child: Container(
                          height: 59,
                          decoration: BoxDecoration(
                            color: Color(0xFFF8F8F8),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'تاريخ النهاية',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xFFDCDCDC)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                //
                // Container(
                //   width: double.infinity,
                //   height: 300,
                //   child: ListView(
                //     children: List.generate(paints.length, (index) {
                //       return ListTile(
                //         onLongPress: () {
                //           setState(() {
                //             paints[index].selected = !paints[index].selected;
                //
                //             log(paints[index].selected.toString());
                //           });
                //         },
                //         selected: paints[index].selected,
                //         leading: GestureDetector(
                //           behavior: HitTestBehavior.opaque,
                //           onTap: () {},
                //           child: Container(
                //             width: 48,
                //             height: 48,
                //             padding: EdgeInsets.symmetric(vertical: 4.0),
                //             alignment: Alignment.center,
                //             child: CircleAvatar(
                //               backgroundColor: paints[index].colorpicture,
                //             ),
                //           ),
                //         ),
                //         title: Text('ID: ' + paints[index].id.toString()),
                //         subtitle: Text(paints[index].title),
                //         trailing: (paints[index].selected)
                //             ? Icon(Icons.check_box)
                //             : Icon(Icons.check_box_outline_blank),
                //       );
                //     }),
                //   ),
                // ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: _time.length,
                  itemBuilder: (_, i) => CheckboxListTile(
                    value: _isSelected[i],
                    onChanged: (value) {
                      setState(() {
                        createVariables();
                        _isSelected[i] = !_isSelected[i];
                      });
                    },
                    title: Row(
                      children: [
                        Image.asset(
                          'assets/icons/icon58.png',
                          height: 15,
                          width: 14,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          '${_time[i]['name']}',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),

                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: (){
                    
                  },
                  child: Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    width: double.infinity,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Color(0xFF1C608D),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        '‏تم',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
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
        'فترة التقرير',
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

// class Paint {
//   final int id;
//   final String title;
//   final Color colorpicture;
//   bool selected = false;
//
//   Paint(this.id, this.title, this.colorpicture);
// }
