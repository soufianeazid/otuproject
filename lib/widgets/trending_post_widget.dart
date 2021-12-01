import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otsocial/util/my_style.dart';

class TrendingPostWidget extends StatefulWidget {
  String? name;
  String? titel;
  String? by;
   Widget? widgets;
   TrendingPostWidget({Key? key,this.by,this.name,this.titel,this.widgets}) : super(key: key);

  @override
  _TrendingPostWidgetState createState() => _TrendingPostWidgetState();
}

class _TrendingPostWidgetState extends State<TrendingPostWidget> {
  
  int _itemSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: Container(
        //height: 200.h,
        width: double.infinity,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.grey.withOpacity(0.2), spreadRadius: 0.3)
            ],
            color: MyStyle.whiteColor,
            borderRadius: BorderRadius.circular(15.r)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: MyStyle.premaryColor,
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        'r/AskReddit',
                        style: MyStyle.smallBlackText,
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.more_vert,
                    color: MyStyle.darkGray,
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              widget.widgets!,
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    'by',
                    style: MyStyle.smallGrayText,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    'r/coochieforbreakfast',
                    style: MyStyle.smallGrayText,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    '•',
                    style: MyStyle.smallGrayText,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    '7h',
                    style: MyStyle.smallGrayText,
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            _itemSelected = 1;
                          });
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_upward,
                              color: _itemSelected == 1
                                  ? MyStyle.premaryColor
                                  : MyStyle.darkGray,
                            ),
                            SizedBox(width: 15.w,),
                            _itemSelected == 1
                                ? Text(
                                    '28.7K',
                                    style: MyStyle.iconPremaryColorText,
                                  )
                                : Text('')
                          ],
                        ),
                      ),
                      InkWell(
                    onTap: () {
                      setState(() {
                        _itemSelected = 2;
                      });
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_downward,
                          color: _itemSelected == 2
                              ? MyStyle.premaryColor
                              : MyStyle.darkGray,
                        ),
                        _itemSelected == 2
                            ? Text(
                                '28.7K',
                                style: MyStyle.iconPremaryColorText,
                              )
                            : Text('')
                      ],
                    ),
                  ),
                    ],
                  ),
                  
                  Row(
                    children: [
                      const Icon(
                        Icons.message_outlined,
                        color: MyStyle.darkGray,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        '3.0K',
                        style: MyStyle.iconDarkGrayText,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.share,
                        color: MyStyle.darkGray,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        'share',
                        style: MyStyle.iconDarkGrayText,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
