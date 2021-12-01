import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otsocial/util/my_style.dart';

class CustomListTile extends StatefulWidget {
  const CustomListTile({Key? key}) : super(key: key);

  @override
  _CustomListTileState createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
