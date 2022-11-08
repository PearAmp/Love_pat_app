import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

class ContentRoute extends StatefulWidget {
  const ContentRoute(
      {Key? key, this.presstonewpage, required this.titlecontent})
      : super(key: key);
  final Function()? presstonewpage;
  final String titlecontent;
  @override
  State<ContentRoute> createState() => _ContentRouteState();
}

class _ContentRouteState extends State<ContentRoute> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.titlecontent,
          style: TextStyle(
              fontFamily: 'Prompt', fontWeight: FontWeight.w700, fontSize: 14),
        ),
        InkWell(
          onTap: widget.presstonewpage,
          child: Text(
            'See All',
            style: TextStyle(
                fontFamily: 'Prompt',
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: HexColor('#a533f4')),
          ),
        )
      ],
    );
  }
}
