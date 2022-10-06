
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class Mywidget extends StatelessWidget {
  Mywidget({this.myColor, this.mychild,required this.tapping});
  String? mychild;

  Color? myColor;
   Function() tapping ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapping,
      child: Container(
        decoration:BoxDecoration(borderRadius: BorderRadius.circular(80), color: myColor,),
       
        child:
        Text(
          "$mychild",
          style: TextStyle(fontSize: 30,color: Colors.white),
        ),
        alignment: Alignment.center,
        width: double.infinity,  
        height: 150,
        
        
      ),
      
      
    );
  }
}
class courses extends StatelessWidget {
   courses( {
      required this.title,
      required this.subtitle,
      required this.tapping,});

  String? title;
  String?subtitle;
  Function()? tapping;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapping,
      child: Container(
        child: ListTile(
          title: Text(
            "$title",
            style: TextStyle(fontSize: 30, color:  Color.fromARGB(255, 21, 24, 75)),
          ),
          subtitle: Text(
            "$subtitle",
            style: TextStyle(fontSize: 40, color:  Colors.blue),
          ),

        ),
      ),
    );
  }
}

class images extends StatelessWidget {

   images({this.myColor, this.mychild,this.pic});
   String? mychild;
      String? pic;


  Color? myColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
       
         alignment: Alignment.center,
                  child: Row(children: [
                    Text("$mychild ",  style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontSize:30 ,
                            color: Color.fromARGB(255, 9, 11, 37))),
                        
                    
                
                    Row(children: [
                      Image(
                        height: 200,
                        width: 200,
                        image:AssetImage(pic!)
                      ),
                    ]),
        
    ])),
      
      
    );
  }
}


final Uri qa_url = Uri.parse('https://www.youtube.com/watch?v=QJqNYhiHysM');
final Uri flutter_url = Uri.parse('https://www.youtube.com/watch?v=VPvVD8t02U8');
final Uri python_url = Uri.parse('https://www.youtube.com/watch?v=kWEbNBXc2-Y');
final Uri java_url = Uri.parse('https://www.youtube.com/watch?v=7yf6676xMhM');


Future<void> qa_Function() async {
  if (!await launchUrl(qa_url)) {
    throw 'Could not launch $qa_url';
  }
}


Future<void> flutter_Function() async {
  if (!await launchUrl(flutter_url)) {
    throw 'Could not launch $flutter_url';
  }
}
Future<void> python_Function() async {
  if (!await launchUrl(python_url)) {
    throw 'Could not launch $python_url';
  }
}
Future<void> java_Function() async {
  if (!await launchUrl(java_url)) {
    throw 'Could not launch $java_url';
  }
}

