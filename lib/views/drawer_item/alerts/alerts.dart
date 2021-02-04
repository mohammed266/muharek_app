import 'package:flutter/material.dart';

class AlertsScreen extends StatefulWidget {
  @override
  _AlertsScreenState createState() => _AlertsScreenState();
}

class _AlertsScreenState extends State<AlertsScreen> {
  final List _alerts = [
    {
      'name': 'السيد بسيونى',
    },
    {
      'name': 'السيد ',
    },
    {
      'name': ' بسيونى',
    },
    {
      'name': ' بسيونى  بسيونى',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: ListView.builder(
            itemCount: _alerts.length,
            shrinkWrap: true,
            itemBuilder: (_, index) => Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Dismissible(
                key:  Key('item ${_alerts[index]}'),
                onDismissed: (DismissDirection direction) {
                  print('Remove item');
                  setState(() {
                    _alerts.removeAt(index);
                  });
                },
                background: Container(
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      // border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.circular(22),
                      color: Colors.red,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.close,color: Colors.white,size: 25,),
                        ],
                      ),
                    ),
                  ),
                ),
                confirmDismiss: (DismissDirection direction) async {
                  return await showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        // title: const Text("Delete Confirmation"),
                        content: const Text(
                            "هل أنت متأكد أنك تريد حذف هذا التعليق؟"),
                        actions: <Widget>[
                          FlatButton(
                            onPressed: () => Navigator.of(context).pop(true),
                            child: const Text("مسح"),
                          ),
                          FlatButton(
                            onPressed: () => Navigator.of(context).pop(false),
                            child: const Text("تراجع"),
                          ),
                        ],
                      );
                    },
                  );
                },
                direction: DismissDirection.startToEnd,
                child: Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFDCDCDC)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 20,
                    ),
                    title: Row(
                      children: [
                        Text(' قام ${_alerts[index]['name']} بالتعليق على اعلانك ',style: TextStyle(fontSize: 9),),
                        Text(' سيارة للبيع',style: TextStyle(fontSize: 9,color: Color(0xFF3192D9)),),

                      ],
                    ),
                    subtitle: Text('منذ 30 دقيقة',style: TextStyle(fontSize: 10),),
                  ),
                ),
              ),
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
        'التنبيهات',
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
