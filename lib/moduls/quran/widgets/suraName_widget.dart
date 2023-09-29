import 'package:flutter/material.dart';
import 'package:project_2/moduls/quran/sura_details_view.dart';

class suraNameWidget extends StatelessWidget {
  const suraNameWidget({super.key, required this.suraName, required this.suraNumber});
  final String suraName;
  final int suraNumber;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return  GestureDetector(
      onTap: (){
        Navigator.pushNamed(
            context,
            suraDetailsView.routeName,
            arguments: suraDetails(suraName,suraNumber));

      },
      child: Container(
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Text(
              "${suraNumber+1}",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
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
              suraName,
                textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}

class suraDetails{
  late String suraName;
  late int suraindrx;

  suraDetails(this.suraName,this.suraindrx) {}
}
