import 'package:flutter/material.dart';

class MyFavScreen extends StatefulWidget {
  @override
  _MyFavScreenState createState() => _MyFavScreenState();
}

class _MyFavScreenState extends State<MyFavScreen> {
 
  final List _fav = [
    {
      'type': 'هيونداى سوناتا',
    },
    {
      'type': 'تويوتا لاندكروزر',
    },
    {
      'type': 'مرسيدس بنز',
    },
    {
      'type': 'جاجوار',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(left: 20,right: 20,top: 20),
          child: ListView.builder(
            itemCount: _fav.length,
            itemBuilder: (_,index) => Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Dismissible(
                key:  Key('item ${_fav[index]}'),
                onDismissed: (DismissDirection direction) {
                  print('Remove item');
                  setState(() {
                    _fav.removeAt(index);
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
                            "هل أنت متأكد أنك تريد حذفها من المفضله؟"),
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
                  height: 110,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 3.8,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/image13.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 20,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Color(0xFF2777B2),
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(7),
                                    bottomLeft: Radius.circular(7),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '5',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Icon(
                                      Icons.photo,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${_fav[index]['type']}',
                                style: TextStyle(
                                    color: Color(0xFF2777B2),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                '2005',
                                style: TextStyle(
                                    color: Color(0xFF555555), fontSize: 10),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.place,
                                    color: Color(0xFF555555),
                                    size: 15,
                                  ),
                                  Text(
                                    'الرياض',
                                    style: TextStyle(
                                      color: Color(0xFF555555),
                                      fontSize: 10,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.watch_later_outlined,
                                    color: Color(0xFF555555),
                                    size: 15,
                                  ),
                                  Text(
                                    'منذ10ساعة',
                                    style: TextStyle(
                                        color: Color(0xFF555555),
                                        fontSize: 10),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 4.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(17),
                            topLeft: Radius.circular(17),
                          ),
                          color: Color(0xFFF8F8F8),
                        ),
                        child: Center(
                          child: Text(
                            '‏75000 ر.س',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF2777B2),
                            ),
                          ),
                        ),
                      ),
                    ],
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
        'المفضلة',
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
