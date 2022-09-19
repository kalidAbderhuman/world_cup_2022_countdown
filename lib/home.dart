import 'package:flutter/material.dart';
import 'package:slide_countdown/slide_countdown.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Image.asset(
            'Asset/image/2022_FIFA_World_Cup.png',
            height: 300,
            width: 400,
          ),
            const SizedBox(height: 10,),
            SlideCountdown(
              duration: const Duration(days: 62,hours: 22,minutes: 56),
              separatorType: SeparatorType.title,
              separatorPadding: EdgeInsets.symmetric(horizontal: 3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white,
            ),
              slideDirection: SlideDirection.down,
              textStyle: TextStyle(decoration: TextDecoration.none,
                        color: Colors.grey[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
            ),

            const SizedBox(height: 20,),
         FlatButton(
             color: Colors.black12,
             shape: RoundedRectangleBorder(side: const BorderSide(
                 color: Colors.black12,
                 width: 1,
                 style: BorderStyle.solid
             ), borderRadius: BorderRadius.circular(50)),
             onPressed: (){}, child: const Text("Share"))
        ],),
      ),
    );
  }
}
