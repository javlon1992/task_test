import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  static String id="home_page";
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indexAnimation=0;
  List text1=[
    "Telegram","Fast","Free","Powerful","Secure","Cloud-Based"
  ];
  List text2=[
    "The world's fastest messaging app. \nIt is free and secure.",
    "Telegrams delivers messages, \nfastest than any other application.",
    "Telegram is free forever. No ads. \nNo subscription fees.",
    "Telegram has no limits on \nthe size of your media and chats.",
    "Telegram keeps your messages safe \nfrom hacker attacks.",
    "Telegram lets your access your messages \nfrom multiple devices.",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: Stack(
         children: [
           Column(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Container(
                 margin: EdgeInsets.only(top: 30),
                 height: 220,
                 width: 220,
                 child: Lottie.asset("assets/anims/t$indexAnimation.json"),
               ),
               Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: List.generate(text1.length, (index) {
                     return AnimatedContainer(
                       duration: Duration(milliseconds: 400),
                       curve: Curves.linear,
                       margin: EdgeInsets.all(2),
                       height: 6,
                       width: indexAnimation==index ? 8: 6,
                       decoration: BoxDecoration(
                         //shape: BoxShape.circle,
                         borderRadius: BorderRadius.circular(5),
                         color: indexAnimation==index ? Colors.blue: Colors.grey.shade300,
                       ),
                     );
                   })
               ),
               SizedBox(),
             ],
           ),
           PageView.builder(
             onPageChanged: (index){
               setState(() {
                 indexAnimation = index;
               });
             },
             itemCount: text1.length,
             itemBuilder: (context,index){
               return animationFun(index);
             },),
           Align(
             alignment: Alignment.bottomCenter,
             child: Container(
               margin: EdgeInsets.only(bottom: 40),
               child: TextButton(
                 onPressed: (){},
                 child: Text("Start Messaging",style: TextStyle(fontSize: 16,color: Colors.blue,fontWeight: FontWeight.bold),),),
             ),
           ),
         ],  
         ),

    );
  }
  Widget animationFun(int index){
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text1[index],style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          Text(text2[index],style: TextStyle(fontSize: 17),textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}
