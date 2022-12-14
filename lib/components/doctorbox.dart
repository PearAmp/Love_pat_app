import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:Love_pet/pages/doctordetail.dart';

class DoctorBox extends StatelessWidget {
  final Map<String, dynamic> doctor;
  const DoctorBox({Key? key, required this.doctor}) : super(key: key);
  @override
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              width: 342.72,
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 4),
                      color: HexColor('#edddfa'),
                      child: Image.asset(
                        'assets/images/${doctor['imagedoctor']}',
                        fit: BoxFit.cover,
                        width: 80,
                      ),
                    ),
                  ),
                  Gap(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        doctor['name'],
                        style: TextStyle(fontFamily: 'Kanit'),
                      ),
                      Gap(5),
                      Text(doctor['expertise'],
                          style: TextStyle(
                              fontFamily: 'Kanit',
                              color: HexColor('5d5d5d'),
                              fontWeight: FontWeight.w100)),
                      Gap(5),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 3, horizontal: 5),
                              color: HexColor('#f8f2fb'),
                              child: Text(
                                '???',
                                style: TextStyle(
                                    color: HexColor('#a537f5'),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                          ),
                          Gap(10),
                          Text(
                            doctor['price'],
                            style: TextStyle(
                                fontFamily: 'Kanit',
                                fontWeight: FontWeight.w700),
                          ),
                          Gap(30),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 3),
                              color: HexColor('#f8f2fb'),
                              child: Icon(
                                Icons.location_on_rounded,
                                size: 12,
                                color: HexColor('a537f5'),
                              ),
                            ),
                          ),
                          Gap(10),
                          Text(
                            doctor['distance'],
                            style: TextStyle(
                                fontFamily: 'Kanit',
                                fontWeight: FontWeight.w700),
                          ),
                          Gap(5),
                          Text(
                            'km',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: HexColor('#5d5d5d')),
                          )
                        ],
                      )
                    ],
                  ),
                  Gap(60),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DocterDetail()),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 30,
                        color: HexColor('f8f2fb'),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: HexColor('a537f5'),
                        ),
                      ),
                    ),
                  )
                ],
              )),
        ),
        Gap(10),
      ],
    );
  }
}
