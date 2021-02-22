import 'package:flutter/material.dart';
import '../../../shared/components/component.dart';


class CommissionAgreement extends StatefulWidget {
  const CommissionAgreement({
    Key key,
   this.onSegmentChosen
  }) : super(key: key);

  final Function onSegmentChosen;

  @override
  _CommissionAgreementState createState() => _CommissionAgreementState();
}

class _CommissionAgreementState extends State<CommissionAgreement> {
  bool checkboxValue1 = false;
  bool checkboxValue2 = false;
  bool checkboxValue3 = false;



  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
     children: [
       Padding(
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
                   // left: MediaQuery.of(context).size.width * 0.39,
                   right: MediaQuery.of(context).size.width * 0.39,
                   child: GestureDetector(
                       onTap: () {
                         setState(() {
                           checkboxValue1 = !checkboxValue1;
                         });
                       },
                       child: Container(
                         height: MediaQuery.of(context).size.width * 0.095,
                         width: MediaQuery.of(context).size.width * 0.095,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           color:
                           checkboxValue1 ? Colors.green : Color(0xFFF8F8F8),
                           border: Border.all(color: Colors.white,width: 2),
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
                   // left: MediaQuery.of(context).size.width * 0.39,
                   right: MediaQuery.of(context).size.width * 0.39,
                   child: GestureDetector(
                       onTap: () {
                         setState(() {
                           checkboxValue2 = !checkboxValue2;
                         });
                       },
                       child: Container(
                         height: MediaQuery.of(context).size.width * 0.095,
                         width: MediaQuery.of(context).size.width * 0.095,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           color:
                           checkboxValue2 ? Colors.green : Color(0xFFF8F8F8),
                           border: Border.all(color: Colors.white,width: 2),
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
                   // left: MediaQuery.of(context).size.width * 0.39,
                   right: MediaQuery.of(context).size.width * 0.39,
                   child: GestureDetector(
                       onTap: () {
                         setState(() {
                           checkboxValue3 = !checkboxValue3;
                         });
                       },
                       child: Container(
                         height: MediaQuery.of(context).size.width * 0.095,
                         width: MediaQuery.of(context).size.width * 0.095,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           color:
                           checkboxValue3 ? Colors.green : Color(0xFFF8F8F8),
                           border: Border.all(color: Colors.white,width: 2),
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
             Padding(
               padding: EdgeInsets.only(left: 50,right: 50),
               child: defaultButton(
                 text: 'استمرار',
                 color: Color(0xFF1C608D),
                 function: () {
                   widget.onSegmentChosen();
                 },
               ),
             ),
           ],
         ),
       ),
     ],
    );
  }
}