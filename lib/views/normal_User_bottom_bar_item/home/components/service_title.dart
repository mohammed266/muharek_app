import 'package:flutter/material.dart';


class ServiceTitle extends StatelessWidget {
  const ServiceTitle({
    Key key,
    this.image,
    this.title,
    this.place,
    this.allService,
    this.onTap,
  }) : super(key: key);

  final String image, title, place, allService;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 25,
      child: Row(
        children: [
          Container(
              height: 25,
              width: 25,
              color: Colors.white,
              padding: EdgeInsets.all(4),
              child: Image.asset(image)),
          SizedBox(
            width: 12,
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: title,
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF555555),
                  ),
                ),
                TextSpan(
                  text: place,
                  style: TextStyle(
                    color: Color(0xFF2777B2),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          InkWell(
            onTap: onTap,
            child: Text(
              allService,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF2777B2),
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}