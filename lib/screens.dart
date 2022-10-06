import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import 'details.dart';


class My_App_Screen extends StatefulWidget {
  const My_App_Screen({super.key});

  @override
  State<My_App_Screen> createState() => _My_App_ScreenState();
}

class _My_App_ScreenState extends State<My_App_Screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 20,
      child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              IconButton(onPressed: () {}, icon: Icon(Icons.image)),
              IconButton(onPressed: () {}, icon: Icon(Icons.school)),
              IconButton(onPressed: () {}, icon: Icon(Icons.quora)),
              IconButton(onPressed: () {}, icon: Icon(Icons.video_camera_back))

            ]),
          backgroundColor: Color.fromARGB(255, 21, 24, 75),
          title: Text('Subject',style: TextStyle(fontSize: 50,)),
          centerTitle: true,
          ),
          body: TabBarView(children: [
           ListView(children: [
        Padding(padding: EdgeInsets.only(left: 50, top: 20, right: 10)),
        images(
           
                pic: 'images/d.webp',

          mychild: "Technology ",
        ),
        Divider(height: 10),
        images(
           
                pic: 'images/c.webp',
          mychild: "Technology  ",
        ),
        Divider(height: 10),
         images(
           
                pic: 'images/b.jpg',

          mychild: "Technology  ",
        ),
        Divider(height: 10),
        images(
                pic: 'images/a.jpg',

           
        
          mychild: "Technology ",
        ),
        images(
                pic: 'images/f.jpg',

           
        
          mychild: "Technology ",
        ),
        images(
                pic: 'images/e.jpg',

           
        
          mychild: "Technology ",
        ),
              ],
            ),
           
   
           
            Column(
              children: [
            courses(
         tapping: qa_Function,
                  title: "Quality Assurance Course", subtitle: 'Watch It', 
                    ),
                    
               Divider(height: 10),
                 courses(
         tapping: flutter_Function,
                  title: "Flutter Course", subtitle: 'Watch It', 
                    ),
                                   Divider(height: 10),

                     courses(
         tapping: python_Function,
                  title: "Python Course", subtitle: 'Watch It', 
                    ),
                                   Divider(height: 10),
                                    courses(
         tapping: python_Function,
                  title: "Java Script Course", subtitle: 'Watch It', 
                    ),

              ],
            )
          ])),
    );
  }
}
