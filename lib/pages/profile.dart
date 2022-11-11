import 'package:Love_pet/components/itemtextprofile.dart';
import 'package:Love_pet/pages/pet-profile-edit.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:Love_pet/services/app_style.dart';
import '../components/baner.dart';
import '../services/navigater.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Styles.colorPastal,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => sendToBack(context: context),
              child:
                  Icon(Icons.arrow_back_ios_rounded, color: Styles.colorBase),
            ),
            // IconButton(
            //   onPressed: () => sendToBack(context: context),
            //   icon: Icon(Icons.arrow_back_ios_rounded, color: Styles.colorBase),
            // ),
            Text('Pet Profile', style: Styles.txtTitle),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => ProfileEdit())));
              },
              child: Icon(
                Icons.edit,
                color: Styles.colorBase,
              ),
            )
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Container(
                width: double.infinity,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextProfileItem(
                        txttitle: 'ชื่อ',
                        subtitle: 'ด็อกกี้',
                      ),
                      Gap(5),
                      TextProfileItem(
                          txttitle: 'สายพันธ์', subtitle: 'โกลเด้นรีทริฟเวอร์'),
                      Gap(5),
                      TextProfileItem(txttitle: 'น้ำหนัก', subtitle: '53 Kg.'),
                      Gap(5),
                      TextProfileItem(txttitle: 'อายุ', subtitle: '3 ปี')
                    ]),
              )),
              Expanded(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/images/lilli.jpeg'),
              )),
            ],
          )
        ],
      ),
    );
  }
}
