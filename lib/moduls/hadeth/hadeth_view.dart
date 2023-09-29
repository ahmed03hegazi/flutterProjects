import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_2/moduls/hadeth/hadeth_details_view.dart';
class HadethView extends StatefulWidget {

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<HadethContent> allHadeth = [];

  @override
  Widget build(BuildContext context) {
    if(allHadeth.isEmpty) readFile();
    readFile();
    var theme = Theme.of(context);
    return  Center(
        child: Container(
          child: Column(
            children: [
              Image.asset("assets/images/hadeth_logo.png"),
              Divider(
                color: theme.primaryColor,
                thickness: 1.5,
                indent: 20,
                endIndent: 20,
              ),
              Text(
                "الاحاديث",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    )
              ),
              Divider(
                color: theme.primaryColor,
                thickness: 1.5,
                indent: 20,
                endIndent: 20,
              ),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) => InkWell(
                    onTap: (){
                      Navigator.pushNamed(
                          context,
                          HadethDetailsView.routeName,
                          arguments: allHadeth[index],
                      );
                    },
                    child: Text(
                    allHadeth[index].title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                      ),
                ),
                  ),
                  separatorBuilder: (context,index) => Divider(
                    color: theme.primaryColor,
                    indent: 40,
                    endIndent: 40,
                  ),
                  itemCount: allHadeth.length,

                ),
              ),
            ],
          ),
        )
    );//center
  }

  readFile() async{
    List<HadethContent> hadethList = [];
    String hadethText = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allHadethList = hadethText.split("#");

    for(int i=0; i<allHadethList.length; i++){
      String singlehadeth = allHadethList[i].trim();
      int indexOfFirstLine = singlehadeth.indexOf("\n");
      String title = singlehadeth.substring(0,indexOfFirstLine);
      String content = singlehadeth.substring(indexOfFirstLine +1);
      HadethContent allHadethContent = HadethContent(title, content);
      hadethList.add(allHadethContent);
    }
    allHadeth = hadethList;
    setState(() {
    });
  }
}

class HadethContent{
  String title;
  String content;

  HadethContent(this.title,this.content);
}