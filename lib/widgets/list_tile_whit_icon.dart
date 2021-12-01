import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otsocial/util/my_style.dart';

class CustomListTile1 extends StatefulWidget {
  const CustomListTile1({Key? key}) : super(key: key);

  @override
  _CustomListTile1State createState() => _CustomListTile1State();
}

class _CustomListTile1State extends State<CustomListTile1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 20.h),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 40.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'HelloWorld404',
                      style: MyStyle.smallGrayText,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'HelloWorld404',
                      style: MyStyle.smallBlackText,
                    ),
                  ],
                )
              ],
            ),
            Icon(
              Icons.more_vert,
              color: MyStyle.darkGray,
            ),
          ],
        ),
      ),
    );
  }
}
