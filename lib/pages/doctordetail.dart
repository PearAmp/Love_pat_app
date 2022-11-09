import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:love_pat/components/boxprice.dart';
import 'package:love_pat/services/navigater.dart';

class DocterDetail extends StatefulWidget {
  const DocterDetail({super.key});

  @override
  State<DocterDetail> createState() => _DocterDetailState();
}

class _DocterDetailState extends State<DocterDetail> {
  bool _isLikeButtonClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SafeArea(
                child: Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () => sendToBack(context: context),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          height: 32,
                          width: 36,
                          color: HexColor('#e3d9ef'),
                          child: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: HexColor('#9d62c2'),
                            size: 18,
                          ),
                        ),
                      )),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      height: 34,
                      width: 38,
                      color: HexColor('#e3d9ef'),
                      child: IconButton(
                        iconSize: 20,
                        icon: _isLikeButtonClicked
                            ? Icon(Icons.favorite)
                            : Icon(Icons.favorite_border_outlined),
                        color: _isLikeButtonClicked
                            ? HexColor('9d62c2')
                            : HexColor('9d62c2'),
                        onPressed: () {
                          setState(() {
                            _isLikeButtonClicked = !_isLikeButtonClicked;
                          });
                        },
                      ),
                    ),
                  )
                ],
              ),
            )),
            Container(
              height: 715,
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    height: 260,
                    width: double.infinity,
                    child: Image.asset('assets/images/doctor3.png'),
                  ),
                  Positioned(
                      bottom: 0,
                      //you can use "right" and "bottom" too
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40))),
                        height: 500,
                        width: 395,
                        child: Column(
                          children: [
                            Gap(20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Drh. Irene Good',
                                      style: TextStyle(
                                          fontFamily: 'Kanit',
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      'สัตวแพทย์ สาขาสัตว์เล็ก',
                                      style: TextStyle(
                                          fontFamily: 'Kanit',
                                          color: Colors.grey),
                                    )
                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10),
                                  decoration: BoxDecoration(
                                      color: HexColor('#e8faef'),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Text(
                                    'Open Practice',
                                    style: TextStyle(
                                      fontFamily: 'Kanit',
                                      color: HexColor('#80d5a8'),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                BoxPrice(
                                  texttype: 'ราคา',
                                  textprops: '฿ 200',
                                ),
                                BoxPrice(
                                  texttype: 'ประสบการณ์',
                                  textprops: '10 ปี',
                                ),
                                BoxPrice(
                                  texttype: 'Rating',
                                  textprops: '4.5/5',
                                )
                              ],
                            )
                          ],
                        ),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
// Image.asset(
//   'assets/images/doctor3.png',
//   height: 300,
// ),
