import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class SegmentChoice extends StatelessWidget {
  final Function onTap;
  final String title;
  final String subTitle;

  const SegmentChoice({Key key, this.onTap, this.title, this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: height*.4,
        width: width*.5,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(0.0, 0.0),
              blurRadius: 10.0,
              spreadRadius: 10.0,
              color: Color(0xffa58d7d),
            )
          ],
          color: Color(0xffbfafb2),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
        ),
        //child: ,
      ),
    );
  }
}

/** ListTile(
        leading: Image.asset(
            'images/yarn2.png',
            fit: BoxFit.cover,
            height: 50,
            width: 50,
          ),
          title: Text(
            title,
            style: TextStyle(
              fontSize: 25,
              color: Colors.blueGrey,
            ),
          ),
          subtitle: AutoSizeText(
            subTitle,
            maxLines: 3,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black38,
            ),
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.golf_course,
              size: 30,
              color: Colors.brown[600],
            ),
            onPressed: onTap,
          ),
*/