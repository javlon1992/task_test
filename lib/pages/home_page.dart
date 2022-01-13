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
    "Telegram X","Fast","Free","Powerful","Secure","Cloud-Based"
  ];
  List text2=[
    "The worlds fastest messaging app. \nIt is free and secure",
    "Telegrams delivers messages, \nfastest than any other application",
    "Telegram is free forever. No ads. \nNo subscription fees.",
    "Telegram delivers messages, \nfastest than any other application",
    "Telegram is free forever. No ads. \nNo subscription fees.",
    "Telegram delivers messages, \nfastest than any other application",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           Container(
             height: 220,
             width: 220,
             child: Lottie.asset("assets/anims/t$indexAnimation.json"),
           ),
           Container(
             height: 200,
             child: PageView.builder(
               onPageChanged: (index){
                 setState(() {
                   indexAnimation = index;
                 });
                 },
               itemCount: text1.length,
                 itemBuilder: (context,index){
                   return animationFun(index);
                 },)
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: List.generate(text1.length, (index) {
               return AnimatedContainer(
                   duration: Duration(seconds: 1),
                 curve: Curves.linear,
                 margin: EdgeInsets.all(2),
                 height: 6,
                 width: indexAnimation==index ? 9: 6,
                 decoration: BoxDecoration(
                   //shape: BoxShape.circle,
                   borderRadius: BorderRadius.circular(5),
                   color: indexAnimation==index ? Colors.blue: Colors.grey.shade300,
                 ),
               );
             })
           ),
           TextButton(
               onPressed: (){},
             child: Text("Start Messaging",style: TextStyle(fontSize: 16,color: Colors.blue,fontWeight: FontWeight.bold),),)
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
