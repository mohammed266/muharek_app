import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RoundedDiagonalPathClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0.0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0.0)
      ..quadraticBezierTo(size.width, 0.0, size.width, 0.0)
      ..lineTo(50.0, 85.0)
      ..quadraticBezierTo(0.0, 100.0, 0.0, 100.0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
//
class SocialLogin extends StatelessWidget {
  const SocialLogin({
    Key key,
    this.text,
    this.color,
    this.icons,
  }) : super(key: key);

  final String text;
  final Color color;
  final Icon icons;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 30,
      width: size.width * 0.25,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20),
            ),
            child: icons,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 15,
                color: Colors.grey[400],
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
//
class ImageAndTitle extends StatelessWidget {
  const ImageAndTitle({
    Key key,
    this.title,
    this.image,
    this.h = 140,
  }) : super(key: key);

  final String title, image;
  final double h;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: 244,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: EasyLocalization.of(context).locale == Locale('en', 'US')
              ? AssetImage('assets/images/image2.png')
              : AssetImage('assets/images/image3.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Container(
                height: 37,
                width: 37,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF3192D9),
                ),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 10,
              ),
              Container(
                height: h,
                width: size.width * .55,
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                ),
              ),
              Spacer(),
              Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  EasyLocalization.of(context).locale == Locale('en', 'US')
                      ? Container(
                          height: 50,
                          width: size.width * 0.33,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              bottomLeft: Radius.circular(25),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFFBFBFBF).withOpacity(.3),
                                offset: Offset(-6, 6),
                                blurRadius: 12,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              title,
                              style: TextStyle(
                                color: Color(0xFF2777B2),
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        )
                      : Container(
                          height: 50,
                          width: size.width * 0.33,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(25),
                              bottomRight: Radius.circular(25),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFFBFBFBF).withOpacity(.3),
                                offset: Offset(-6, 6),
                                blurRadius: 12,
                                // spreadRadius: 5,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              title,
                              style: TextStyle(
                                color: Color(0xFF2777B2),
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
//
class WorkshopContainer extends StatefulWidget {
  const WorkshopContainer({
    Key key, this.image, this.title, this.onTap,this.h = 25,this.w = 25,
  }) : super(key: key);

  final String image,title;
  final Function onTap;
  final double h;

  final double w;

  @override
  _WorkshopContainerState createState() => _WorkshopContainerState();
}

class _WorkshopContainerState extends State<WorkshopContainer> {


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        height:
        // MediaQuery.of(context).size.height / 3.3,
        150,
        width: MediaQuery.of(context).size.width / 2.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          border: Border.all(color: Color(0xFFDCDCDC)),
          color: Colors.transparent,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundImage:
              AssetImage('assets/icons/icon9.png'),
              child: Image.asset(
                widget.image,
                height: widget.h,
                width: widget.w,
              ),
              radius: 26,
            ),
            Text(
              widget.title,
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFF4C5264),
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//
class TitleContainer extends StatelessWidget {
  const TitleContainer({
    Key key,
    this.image,
    this.text,
  }) : super(key: key);

  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 47,
      decoration: BoxDecoration(
        color: Color(0xFFFCFCFC),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Row(
          children: [
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Image.asset(image),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
//
class ServiceDrawerList extends StatefulWidget {
  const ServiceDrawerList({
    Key key,
    this.title,
    this.image, this.onTap,
  }) : super(key: key);
  final String title, image;
  final Function onTap;

  @override
  _ServiceListState createState() => _ServiceListState();
}

class _ServiceListState extends State<ServiceDrawerList> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: widget.onTap,
      contentPadding: EdgeInsets.only(left: 10),
      title: Text(
        widget.title,
        style: TextStyle(
          fontSize: 14,
          color: Color(0xFFA2A2A2),
        ),
      ),
      leading: Padding(
        padding: EdgeInsets.only(right: 20),
        child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Image.asset(
              widget.image,
              height: 17,
              width: 17,
            ),
          ),
        ),
      ),
    );
  }
}
//

class ServiceListTitle extends StatefulWidget {
  const ServiceListTitle({
    Key key,
    this.title,
    this.image,
  }) : super(key: key);
  final String title, image;

  @override
  _ServiceListTitleState createState() => _ServiceListTitleState();
}

class _ServiceListTitleState extends State<ServiceListTitle> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: toggleSelection,
      contentPadding: EdgeInsets.only(left: 10),
      title: Text(
        widget.title,
        style: TextStyle(
          fontSize: 12,
          color: isSelected ? Color(0xFF0BC500) : Color(0xFFA2A2A2),
        ),
        // textDirection: TextDirection.rtl,
      ),
      trailing: isSelected ? Image.asset('assets/icons/icon8.png',height: 25,width: 35,) : Image.asset('assets/icons/icon3.png',height: 25,width: 35,),
      leading: CircleAvatar(
        radius: 22,
        child: Center(
          child: Image.asset(
            widget.image,
            height: 30,
            width: 30,
          ),
        ),
      ),
      selected: isSelected,
    );
  }

  bool isSelected = false;
  void toggleSelection() {
    setState(() {
      if (isSelected) {
        isSelected = false;
      } else {
        isSelected = true;
      }
    });
  }
}
//

class Details extends StatelessWidget {
  const Details({
    Key key,
    this.title,
    this.text,
  }) : super(key: key);

  final String title, text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 15, color: Color(0xFF3192D9)),
        ),
        Spacer(),
        Text(
          text,
          style: TextStyle(fontSize: 15, color: Color(0xFF707070)),
        ),
      ],
    );
  }
}


Widget defaultButton({
  text,
  function,
  color,
  double r = 20,
  Color c = Colors.white,
  double opa = 0.9,
}) {
  return Container(
    width: double.infinity,
    height: 40,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(r),
      color: color,
      gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [Color(0xFF1C608D), Color(0xFF3192D9).withOpacity(opa)],
      ),
    ),
    child: FlatButton(
      onPressed: function,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 13,
          color: c,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}

Widget inputField(
    {String hint,
    bool secure,
    TextInputType textInputType,
    bool icon = false,
    Function validate,
    Function onSave,
    Function onChanged,
    Widget prefix,
    Color color = Colors.white,
    }) {
  return TextFormField(
    validator: validate,
    onSaved: onSave,
    onChanged: onChanged,
    keyboardType: textInputType,
    obscureText: secure,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(horizontal: 15),
      fillColor: color,
      hintText: hint,
      hintStyle: TextStyle(
        color: Color(0xFFBFBFBF),
        fontSize: 13,
      ),
      filled: true,
      suffixIcon: icon ? prefix : Container(),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide.none,
      ),
    ),
  );
}
