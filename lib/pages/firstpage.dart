import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:Love_pet/components/Boxservice.dart';
import 'package:Love_pet/components/baner.dart';
import 'package:Love_pet/components/contentroute.dart';
import 'package:Love_pet/pages/doctor.dart';
import 'package:Love_pet/pages/profile.dart';
import 'package:Love_pet/pages/serviceall.dart';

import '../components/doctorbox.dart';
import '../utils/app_info_list.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: BannerApp(
          title: 'Aoccy',
          imageprofile: 'assets/images/profile.png',
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('assets/images/smartdog.png'),
                ),
                Gap(30),
                ContentRoute(
                  titlecontent: 'Service (บริการทั่วไป)',
                  presstonewpage: () => Navigator.push(context,
                      MaterialPageRoute(builder: (_) => ServiceAllPage())),
                ),
                Gap(20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: serviceList
                          .map((singleHotel) => Container(
                                padding: EdgeInsets.only(right: 10),
                                child: ServiceBox(service: singleHotel),
                              ))
                          .toList()),
                ),
                Gap(20),
                ContentRoute(
                  titlecontent: 'Nearby Veterinary (สัตวแพทย์ใกล้ฉัน)',
                  presstonewpage: () => Navigator.push(
                      context, MaterialPageRoute(builder: (_) => DoctorPage())),
                ),
                Gap(20),
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                        children: doctorList
                            .map((singleDoctor) => Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: DoctorBox(doctor: singleDoctor),
                                ))
                            .toList()),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
// SingleChildScrollView(
//   scrollDirection: Axis.horizontal,
//   child: Row(
//     children: [],
//   ),
// )

// height: 200,
// child: ListView.builder(
//   shrinkWrap: true,
//   scrollDirection: Axis.horizontal,
//   itemCount: 6,
//   itemBuilder: (BuildContext context, int index) => Row(
//       children: hotelList
//           .map((singleHotel) =>
//               ServiceBox(hotel: singleHotel))
//           .toList()),
// )),
