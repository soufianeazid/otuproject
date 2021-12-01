import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otsocial/controller/video_player_controller.dart';
import 'package:otsocial/util/my_style.dart';
import 'package:otsocial/widgets/trending_post_widget.dart';

class Trending extends StatefulWidget {
  const Trending({Key? key}) : super(key: key);

  @override
  _TrendingState createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyStyle.secondaryColor,
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  //height: 200.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 0.3)
                      ],
                      color: MyStyle.whiteColor,
                      borderRadius: BorderRadius.circular(15.r)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, top: 20.w),
                        child: Row(
                          children: [
                            Text(
                              'Trending',
                              style: MyStyle.pageTitelBlackText,
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Container(
                                height: 40.h,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: MyStyle.whiteColor,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 1)
                                  ],
                                ),
                                child: const Icon(
                                  Icons.keyboard_arrow_right,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.2))),
                      ),
                      TrendingPostWidget(
                        widgets: Text(
                          'Every SQL statement executed by the Oracle server has an associated individual cursor Implicit cursors: Declared and managed by PL/SQL for all DML and PL/SQL SELECTstatementsExplicit cursors: Declared and managed by the programmer',
                          style: MyStyle.textBlackText,
                        ),
                      ),
                    ],
                  ),
                ),
                //TrendingPostWidget(
                //  widgets: VideoPlayerScreen(),
                //),
                //TrendingPostWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
