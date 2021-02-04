import 'package:flutter/material.dart';
import 'package:muharek_app/shared/components/component.dart';

class MyAddressesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(left: 20,right: 20,top: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                  itemCount: 2,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (_,index) => Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: Color(0xFFF8F8F8),
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 11,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('assets/icons/icon15.png'),
                        ),
                        title: Text('الرياض-الخرج',style: TextStyle(fontSize: 14),),
                        trailing: InkWell(
                          onTap: (){
                            //
                          },
                          child: Icon(
                            Icons.edit,
                            color: Color(0xFF3192D9),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height* 0.4,
                ),
                defaultButton(
                    color: Color(0xFF3192D9),
                    text: 'اضف عنوان جديد',
                    function: () {
                      // Navigator.push(context,
                      //   MaterialPageRoute(builder: (_) =>
                      //       AddNewCardScreen(),
                      //   ),
                      // );
                    }
                ),
                SizedBox(
                  height: 30,
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
        'عناوينى',
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
