import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import '../check/captain_bill%20.dart';
import '../delegate_evaluation/delegate_evaluation.dart';
import '../../shared/components/component.dart';
import 'package:im_stepper/stepper.dart';

class OrderDetailsScreen extends StatefulWidget {
  @override
  _OrderDetailsScreenState createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  int activeStep = 0;
  int upperBound = 3;

  String headerText() {
    switch (activeStep) {
      case 1:
        return 'الكابتن سيصلك في خلال 30 دقيقة';

      case 2:
        return 'تمت الخدمة بنجاح يرجى تقيم كابتن الفحص';

      default:
        return 'الكابتن سيصلك في خلال 30 دقيقة بعد تأكيد الطلب';
    }
  }

  Future<void> _showDialog() async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: Padding(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Column(
              children: [
                SizedBox(height: 120),
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
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xFFFF5A5A),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'هل انت متأكد من الغاء \n الطلب ؟',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
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
                              child: GestureDetector(
                                onTap: ()async{
                                  Navigator.pop(context);
                                  // Future.delayed(
                                  //   const Duration(seconds: 1),
                                  //       (){
                                  //         _showDialog1();
                                  //         Navigator.pop(context);
                                  //   }
                                  // );
                                  _showDialog1();
                                },
                                child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Color(0xFFFF5A5A),
                                  ),
                                  child: Center(
                                      child: Text(
                                        'نعم',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      )),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(
                                      color: Color(0xFF0BC500),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'لا',
                                      style: TextStyle(
                                        color: Color(0xFF0BC500),
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
  Future<void> _showDialog1() async {
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 65,
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xFFFF5A5A),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'تم الغاء الطلب',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(padding: EdgeInsets.only(top: 40)),
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: ListView(
            children: [
              Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  color: Color(0xFFF8F8F8),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/image23.png',
                      width: 70,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12, right: 12),
                      child: Text(
                        headerText(),
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xFF4C5264),
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: double.infinity,
                height: 140,
                decoration: BoxDecoration(
                  color: Color(0xFF555555),
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    ImageStepper(
                      images: [
                        AssetImage('assets/icons/icon8.png'),
                        AssetImage('assets/icons/icon8.png'),
                        AssetImage('assets/icons/icon8.png'),
                      ],
                      activeStep: activeStep,
                      bgColor: Color(0xFF555555),
                      enableStepTapping: false,
                      upperBound: (bound) => upperBound = bound,
                      onStepReached: (index) {
                        setState(() {
                          activeStep = index;
                        });
                      },
                      activeStepBorderColor: Colors.green,
                      enableNextPreviousButtons: false,
                      lineColor: Colors.green,
                      stepColor: Color(0xFF555555),
                      lineLength: MediaQuery.of(context).size.width* 0.23,
                      // 65,
                      stepRadius: 15,
                      activeStepColor: Color(0xFF555555),
                      activeStepBorderPadding: 3,
                      scrollingDisabled: false,
                      steppingEnabled: false,
                      // enableStepTapping: false,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'الكابتن استقبل \n الطلب',
                          style: TextStyle(fontSize: 8, color: Colors.white),
                        ),
                        Text(
                          'الكابتن جاى لك \n في الطريق',
                          style: TextStyle(fontSize: 8, color: Colors.white),
                        ),
                        Text(
                          'تم المطلوب',
                          style: TextStyle(fontSize: 8, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  'تفاصيل الكابتن',
                  style: TextStyle(fontSize: 15, color: Color(0xFF707070)),
                ),
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
                          defaultButton(
                            text: (activeStep == 0) ? 'تأكيد الطلب' : 'محادثة',
                            color: (activeStep == 2) ? Color(0xFFBFBFBF) :Color(0xFF0BC500),
                            function: () {
                              if (activeStep < upperBound) {
                                setState(() {
                                  activeStep++;
                                });
                              }
                            },
                          ),
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
              Padding(
                padding: EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  'مكان السيارة',
                  style: TextStyle(fontSize: 15, color: Color(0xFF707070)),
                ),
              ),
              Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  color: Color(0xFFF8F8F8),
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.location_on_outlined,
                      color: Color(0xFF3192D9),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'يكتب عنوان السيارة هنا',
                      style: TextStyle(fontSize: 14, color: Color(0xFF4C5264)),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  'طريقة الدفع',
                  style: TextStyle(fontSize: 15, color: Color(0xFF707070)),
                ),
              ),
              Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  color: Color(0xFFF8F8F8),
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/icons/icon50.png',
                      height: 30,
                      width: 30,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'الدفع نقدا',
                      style: TextStyle(fontSize: 14, color: Color(0xFF4C5264)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  'نوع وتكلفة الخدمة',
                  style: TextStyle(fontSize: 15, color: Color(0xFF707070)),
                ),
              ),
              Container(
                width: double.infinity,
                height: 140,
                decoration: BoxDecoration(
                  color: Color(0xFFF8F8F8),
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 25, right: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Text(
                            'تكلفة فحص الكمبيوتر',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xFF4C5264)),
                          ),
                          Spacer(),
                          Text(
                            '‏150 ريال',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xFF4C5264)),
                          ),
                        ],
                      ),
                      Container(
                        height: 1,
                        width: double.infinity,
                        color: Colors.grey,
                      ),
                      Row(
                        children: [
                          Text(
                            'الاجمالى',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xFF4C5264)),
                          ),
                          Spacer(),
                          Text(
                            '‏150 ريال',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xFF4C5264)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              (activeStep == 2)
                  ? Row(
                children: [
                  Expanded(
                    child: defaultButton(
                      text: 'تقييم الخدمة',
                      color: Color(0xFF3192D9),
                      function: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) => DelegateEvaluationScreen(),),);
                      },
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: defaultButton(
                      text: 'الفاتورة',
                      color: Color(0xFF0BC500),
                      function: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) => CaptainBillScreen()));
                      },
                    ),
                  ),
                ],
              )
                  : Row(
                 children: [
                   Expanded(
                     child: defaultButton(
                       text: 'الغاء الطلب',
                       color: Color(0xFFFF5A5A),
                       function: () {
                         _showDialog();
                       },
                     ),
                   ),
                   SizedBox(
                     width: 10,
                   ),
                   Expanded(
                     child: defaultButton(
                       text: 'الفاتورة',
                       color: Color(0xFFF8F8F8),
                       function: null,
                       c: Color(0xFFDCDCDC),
                     ),
                   ),
                 ],
               ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        'رقم الطلب 25452154',
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
