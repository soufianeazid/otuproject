import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otsocial/util/my_style.dart';
import 'package:otsocial/widgets/list_tile.dart';
import 'package:otsocial/widgets/list_tile_whit_icon.dart';
import 'package:otsocial/widgets/trending_post_widget.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyStyle.secondaryColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100.h,
                width: double.infinity,
                color: MyStyle.whiteColor,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 55.h,
                            width: 55.w,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: MyStyle.blackColor,
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'r/AskReddit',
                                style: MyStyle.smallBlackText,
                              ),
                              SizedBox(
                                height: 10.h,
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
                                    'r/coochieforbre',
                                    style: MyStyle.smallGrayText,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    '•',
                                    style: MyStyle.smallGrayText,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    '7h',
                                    style: MyStyle.smallGrayText,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    '•',
                                    style: MyStyle.smallGrayText,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    'i.r6dd.it',
                                    style: MyStyle.smallGrayText,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 40.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.r),
                            border: Border.all(
                              color: MyStyle.premaryColor,
                              width: 2,
                            )),
                        child: Center(
                          child: Text(
                            'join',
                            style: TextStyle(
                                color: MyStyle.premaryColor,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Column(
                    children: [
                      TrendingPostWidget(),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 0.3)
                            ],
                            color: MyStyle.whiteColor,
                            borderRadius: BorderRadius.circular(15.r)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 20.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Best Comment',
                                    style: MyStyle.pageTitelBlackText,
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Container(
                                    height: 20.h,
                                    width: 30.w,
                                    decoration: BoxDecoration(
                                      color: MyStyle.whiteColor,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.2),
                                            spreadRadius: 1)
                                      ],
                                    ),
                                    child: const Icon(
                                      Icons.keyboard_arrow_down,
                                    ),
                                  )
                                ],
                              ),
                             
                              CustomListTile1(),
                              SizedBox(
                                height: 20.h,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20.w),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 1,
                                          height: 100.h,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey)),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.w),
                                          child: Column(
                                            children: [
                                              CustomListTile(),
                                              SizedBox(
                                                height: 15.h,
                                              ),
                                              CustomListTile(),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Text(
                                    'Reply',
                                    style: TextStyle(
                                        color: MyStyle.premaryColor,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  CustomListTile1(),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
