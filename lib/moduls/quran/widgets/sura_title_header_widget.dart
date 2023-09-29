import 'package:flutter/material.dart';

class suraTitleHeaderWidget extends StatelessWidget {
  const suraTitleHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return  Column(
      children: [
        Divider(
          color: theme.primaryColor,
          thickness: 2,
        ),
        Row(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Text(
              "رقم الصوره",
                textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),
            ),
            ),
            Container(
              width: 2,
              height: 40,
              color: theme.primaryColor,
            ),
            Expanded(
              child: Text(
              "اسم الصورة",
                textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),
            ),
            ),
          ],
        ),
        Divider(
          color: theme.primaryColor,
          thickness: 2,
        ),
      ],
    );
  }
}
