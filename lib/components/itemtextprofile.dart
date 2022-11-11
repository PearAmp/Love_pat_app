import 'package:Love_pet/services/app_style.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TextProfileItem extends StatefulWidget {
  const TextProfileItem({
    Key? key,
    required this.txttitle,
    required this.subtitle,
  }) : super(key: key);
  final String txttitle;
  final String subtitle;

  @override
  State<TextProfileItem> createState() => _TextProfileItemState();
}

class _TextProfileItemState extends State<TextProfileItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.txttitle,
          style: Styles.txtsubGrey,
        ),
        Text(
          widget.subtitle,
          style: Styles.txtmedium,
        ),
      ],
    );
  }
}
