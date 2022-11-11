import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:Love_pet/components/boxprice.dart';
import 'package:Love_pet/components/map.dart';
import 'package:Love_pet/services/navigater.dart';
import 'package:url_launcher/url_launcher.dart';

class DocterDetail extends StatefulWidget {
  const DocterDetail({super.key});

  @override
  State<DocterDetail> createState() => _DocterDetailState();
}

class _DocterDetailState extends State<DocterDetail> {
  bool _isLikeButtonClicked = false;
  @override
  Widget build(BuildContext context) {
    final Uri url = Uri.parse('https://www.google.co.th/maps/');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('debff2'),
        shadowColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => sendToBack(context: context),
              child: Container(
                height: 32,
                width: 36,
                decoration: BoxDecoration(
                  border: Border.all(color: HexColor('9d62c2')),
                  color: HexColor('#e3d9ef'),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: HexColor('#9d62c2'),
                  size: 18,
                ),
              ),
            ),
            Container(
              height: 34,
              width: 38,
              decoration: BoxDecoration(
                border: Border.all(color: HexColor('9d62c2')),
                color: HexColor('#e3d9ef'),
                borderRadius: BorderRadius.circular(5),
              ),
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
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 5, bottom: 20, left: 20, right: 20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 80),
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        color: HexColor('#f9f2fe'),
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      'assets/images/doctor2.png',
                      height: 150,
                    ),
                  ),
                  Gap(20),
                  Text(
                    'Drh. Jane Good',
                    style: TextStyle(
                        fontFamily: 'Kanit',
                        fontSize: 16,
                        fontWeight: FontWeight.w800),
                  ),
                  Gap(5),
                  Text(
                    'สัตวแพทย์เฉพาะทาง สัตว์เล็ก',
                    style: TextStyle(
                        fontFamily: 'Kanit', fontSize: 12, color: Colors.grey),
                  ),
                  Gap(10),
                  Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: HexColor('#a533f4'),
                        size: 20,
                      ),
                      Gap(10),
                      Text(
                        '089-568-4489',
                        style: TextStyle(fontFamily: 'kanit'),
                      )
                    ],
                  ),
                  Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BoxPrice(texttype: 'ราคา', textprops: '฿ 250'),
                      BoxPrice(texttype: 'ประสบการณ์', textprops: '10'),
                      BoxPrice(texttype: 'Rating', textprops: '4.5'),
                    ],
                  ),
                  Gap(20),
                  Text(
                    'About Veterinary',
                    style: TextStyle(
                        fontFamily: 'kanit',
                        fontSize: 15,
                        fontWeight: FontWeight.w800),
                  ),
                  Gap(20),
                  Text(
                    'ในประเทศไทย คาดว่า คำว่า สัตวแพทย์ พล.ต. ม.จ.ทองฑีฆายุ ทองใหญ่ ผู้ซึ่งเป็นพระบิดาของวิชาสัตวแพทย์สมัยใหม่ เป็นผู้ใช้คำนี้ โดยทรงก่อตั้งโรงเรียนอัศวแพทย์ทหารบก ซึ่งได้พัฒนาต่อมาเป็นโรงเรียนนายสิบสัตวแพทย์ และ โรงเรียนนายดาบสัตวแพทย์ทหารบก ตามลำดับ ซึ่งถือว่าเป็นการศึกษาวิชาสัตวแพทยศาสตร์ครั้งแรกของประเทศไทย โดยต้องการผลิตกำลังพลป้อนกองทัพ และได้พัฒนาเป็นแผนกอิสระสัตวแพทยศาสตร์ ตั้งอยู่ ณ จุฬาลงกรณ์มหาวิทยาลัย โดยมี ศาสตราจารย์ พันโท หลวงชัยอัศวรักษ์ เป็นปฐมคณบดี ซึ่งถือว่าเป็นการศึกษาวิชาสัตวแพทยศาสตร์ ในสถานศึกษาพลเรือนเป็นครั้งแรก เพื่อผลิตสัตวแพทย์ ในระดับปริญญา',
                    style: TextStyle(
                        fontFamily: 'kanit', color: Colors.grey, fontSize: 12),
                  ),
                  Gap(20),
                  Text(
                    'Location',
                    style: TextStyle(
                        fontFamily: 'kanit',
                        fontSize: 15,
                        fontWeight: FontWeight.w800),
                  ),
                  Gap(20),
                  Container(
                    child: MapWidget(),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        launchUrl(url);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: HexColor('#a33eea')),
                      child: Container(
                        width: double.infinity,
                        child: Align(
                          child: Text(
                            'Open To Map',
                            style: TextStyle(fontFamily: 'kanit'),
                          ),
                        ),
                      ))
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
