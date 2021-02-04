import 'package:flutter/material.dart';

class MessagesScreen extends StatefulWidget {
  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  final List _cat = [
    {
      'name': 'محمد إبراهيم (كابتن فحص)',
    },
    {
      'name': 'إبراهيم (كابتن فحص)',
    },
    {
      'name': 'محمد إبراهيم (كابتن فحص)',
    },
    {
      'name': 'محمد  (كابتن فحص)',
    },
  ];
  GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _key,
        backgroundColor: Colors.white,
        appBar: buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: ListView.builder(
            itemCount: _cat.length,
            shrinkWrap: true,
            itemBuilder: (_, index) => Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Dismissible(
                key: Key('item ${_cat[index]}'),
                onDismissed: (DismissDirection direction) {
                    print('Remove item');
                  setState(() {
                    _cat.removeAt(index);
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
                            "هل أنت متأكد أنك تريد حذف هذه الرساله؟"),
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
                  width: double.infinity,
                  height: 77,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xFFDCDCDC)),
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: ListTile(
                    title: Text(
                      '${_cat[index]['name']}',
                      style: TextStyle(fontSize: 12),
                    ),
                    subtitle: Text(
                      '15/12/2020',
                      style: TextStyle(fontSize: 12),
                    ),
                    leading: Container(
                      height: 50,
                      width: 50,
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                      ),
                    ),
                    trailing: Text(
                      '12:47 am',
                      style: TextStyle(fontSize: 10),
                    ),
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
        'الرسائل',
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
