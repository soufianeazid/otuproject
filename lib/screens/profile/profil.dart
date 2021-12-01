import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otsocial/util/my_style.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyStyle.secondaryColor,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: MyStyle.premaryColor,
                        size: 35.sp,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(
                          color: MyStyle.premaryColor,
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Icon(
                    Icons.more_vert,
                    size: 30.sp,
                    color: MyStyle.darkGray,
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 0.3)
                    ],
                    color: MyStyle.whiteColor,
                    borderRadius: BorderRadius.circular(15.r)),
                //height: 100.h,
                width: double.infinity,

                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Every SQL statement executed by the Oracle server has an associated individual cursor Implicit cursors: Declared and managed by PL/SQL for all DML and PL/SQL SELECTstatementsExplicit cursors: Declared and managed by the programmer',
                        style: MyStyle.smalldarkGrayText,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        height: 40.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            color: MyStyle.secondaryColor),
                        child: Center(
                          child: Text(
                            'Health & Fitness',
                            style: TextStyle(color: MyStyle.premaryColor),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        height: 40.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: MyStyle.premaryColor,
                            borderRadius: BorderRadius.circular(40.r)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 30.sp,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'JOIN',
                              style: TextStyle(
                                  color: MyStyle.whiteColor,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
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
                    horizontal: 20.w,
                  ),
                  child: Column(
                    children: [
                      Row(
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
                        ],
                      )
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
