import 'package:flutter/material.dart';
import 'package:neumorphic_button/neumorphic_button.dart';
import 'package:rive/rive.dart';

import 'glowing_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            GestureDetector(
              onTap: () {
                setState(() {
                  index = 0;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                height: index==0?60:50,
                width: index==0?MediaQuery.of(context).size.width:MediaQuery.of(context).size.width-15,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(.2),
                        blurRadius: 10,
                        spreadRadius: 4
                    )
                  ],
                ),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Center(
                  child: index==0?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Lesson 2 begin",style: TextStyle(color: Colors.black),),
                      SizedBox(
                          width: 55,
                          height: 55,
                          child: RiveAnimation.asset("assets/images/fire3.riv")
                      )
                    ],
                  ):
                  Text("Lesson 1 begin",style: TextStyle(color: Colors.black),),
                ),
              ),
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: () {
                setState(() {
                  index = 1;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                height: index==1?60:50,
                width: index==1?MediaQuery.of(context).size.width:MediaQuery.of(context).size.width-15,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(.2),
                        blurRadius: 10,
                        spreadRadius: 4
                    )
                  ],
                ),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Center(
                  child: index==1?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Lesson 2 begin",style: TextStyle(color: Colors.black),),
                      SizedBox(
                          width: 55,
                          height: 55,
                          child: RiveAnimation.asset("assets/images/fire3.riv")
                      )
                    ],
                  ):
                  Text("Lesson 2 begin",style: TextStyle(color: Colors.black),),
                ),
              ),
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: () {
                setState(() {
                  index = 2;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                height: index==2?60:50,
                width: index==2?MediaQuery.of(context).size.width:MediaQuery.of(context).size.width-15,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(.2),
                        blurRadius: 10,
                        spreadRadius: 4
                    )
                  ],
                ),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Center(
                  child: index==2?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Lesson 3 begin",style: TextStyle(color: Colors.black),),
                      SizedBox(
                          width: 55,
                          height: 55,
                          child: RiveAnimation.asset("assets/images/fire3.riv")
                      )
                    ],
                  ):
                  Text("Lesson 3 begin",style: TextStyle(color: Colors.black),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
