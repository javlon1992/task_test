import 'package:flutter/material.dart';
import 'package:task_test/pages/home_page.dart';

class AnimationPage extends StatefulWidget {
  static String id="animation_page";
  const AnimationPage({Key? key}) : super(key: key);

  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> with SingleTickerProviderStateMixin{
 late AnimationController _controller;
 late Animation<Offset> _animation;

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 1500));

    _animation = Tween<Offset>(
      begin: Offset.zero,
      end: Offset(0.0, -1.0),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInToLinear));
    _controller.forward();
    _controller.addStatusListener((status) {
        if(status == AnimationStatus.completed) {
          Navigator.of(context).pushReplacementNamed(HomePage.id);
        }
      });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlideTransition(
        position: _animation,
        child: Align(alignment: Alignment.center,
            child: Image(
              height: 100,
              width: 100,
              fit: BoxFit.cover,
              image: AssetImage("assets/imeges/telegram.png"),)),
      ),
    );
  }
}
