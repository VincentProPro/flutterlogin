import 'package:africa1country/variable.dart';
import 'package:flutter/material.dart';

import '../Template2/Template2.dart';
class Template4 extends StatefulWidget {
  @override
  _Template4State createState() => _Template4State();
}

class _Template4State extends State<Template4> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('VincentCreation'),
        backgroundColor: Colors.lightGreen,
      ),
      //backgroundColor: Colors.green,
      body: Container(
        child: ListView(
          children: [
            Column(
              // Column is also a layout widget. It takes a list of children and
              // arranges them vertically. By default, it sizes itself to fit its
              // children horizontally, and tries to be as tall as its parent.
              //
              // Invoke "debug painting" (press "p" in the console, choose the
              // "Toggle Debug Paint" action from the Flutter Inspector in Android
              // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
              // to see the wireframe for each widget.
              //
              // Column has various properties to control how it sizes itself and
              // how it positions its children. Here we use mainAxisAlignment to
              // center the children vertically; the main axis here is the vertical
              // axis because Columns are vertical (the cross axis would be
              // horizontal).
              children: <Widget>[

                Container(
                  height: screenSize.width/1.5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/header/p1.png'),
                          fit: BoxFit.fill
                      )),
                  child: Stack(
                    children: [
                      Positioned(
                          top: 2,
                          left: screenSize.width/4,
                          width: screenSize.width/2,
                          height: screenSize.width/2,
                          child: TweenAnimationBuilder(
                            tween: scaleTween,
                            duration: Duration(milliseconds: 400),
                            builder: (context,scale,chlid){
                              return Transform.scale(scale: scale,child: chlid);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('images/header/hp12.png'),
                                    //fit: BoxFit.fill
                                  )),
                              child: null,
                            ),
                          )),
                      Positioned(
                          top: -10,
                          left: screenSize.width/3,
                          width: screenSize.width/5,
                          height: screenSize.width/5,
                          child: TweenAnimationBuilder(
                            tween: scaleTween2,
                            duration: Duration(milliseconds: 900),
                            builder: (context,scale,chlid){
                              return Transform.scale(scale: scale,child: chlid);
                            },

                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('images/content/p3.png'),
                                    //fit: BoxFit.fill
                                  )),
                              child: null,
                            ),
                          )),
                      Positioned(
                          right: 0,
                          width: screenSize.width/7,
                          height: screenSize.width/5,
                          child: TweenAnimationBuilder(
                            tween: scaleTween3,
                            duration: Duration(milliseconds: 1600),
                            builder: (context,scale,chlid){
                              return Transform.scale(scale: scale,child: chlid);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('images/content/p2.png'),
                                    //fit: BoxFit.fill
                                  )),
                              child: null,
                            ),
                          )),
//                      Positioned(
//                          top: 190,
//                          //right: -5,
//                          width: 200,
//                          height: 200,
//                          child: AnimatedBuilder(
//                            animation: _controller.view,
//                            builder: (context,child){
//                              return Transform.rotate(angle: _controller.value*2*pi,child: child,);
//                            },
//                            child: Container(
//                              decoration: BoxDecoration(
//                                  image: DecorationImage(
//                                      image: AssetImage('images/roue.png'),
//                                      fit: BoxFit.fill
//                                  )),
//                              child: null,
//                            ),
//                          )),
//                      Positioned(
//                          top: 190,
//                          left: 55,
//                          width: 189,
//                          height: 200,
//                          child: Container(
//                            child: Text('Hello template',style: TextStyle(fontSize: 22),),
//                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:30.0,left: 30),
                  child: Column(

                    children: [
                      SizedBox(height: 10,),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [BoxShadow(
                                color: Color.fromRGBO(71, 208, 61, 2),
                                blurRadius: 20,
                                offset: Offset(0, 10)
                            )]

                        ),
                        child: Column(

                          children: [
                            SizedBox(height: 10,),
                            Text('LOGIN',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700,color: Colors.green)),
                            Container(

                              child: Card(
                                elevation: 5,
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Email or phone Number",
                                      hintStyle: TextStyle(color: Colors.grey[400])
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(

                              child: Card(
                                elevation: 5,

                                child: TextField(
                                  textAlign: TextAlign.center,

                                  decoration: InputDecoration(
                                      border: InputBorder.none,

                                      hintText: "PassWord",
                                      hintStyle: TextStyle(color: Colors.grey[400])
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 10,
                            ),

                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TweenAnimationBuilder(
                        tween: scaleTween4,
                        duration: Duration(milliseconds: 2000),
                        builder: (context,scale,chlid){
                          return Transform.scale(scale: scale,child: chlid);
                        },
                        child: Container(

                          height: 50,

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(71, 208, 61, 1),
                                Color.fromRGBO(239, 239, 15, 6)
                              ])
                          ),
                          child: Center(
                            child: Text('Go',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 22)),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),

                      Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Text('Create Account',style: TextStyle(fontStyle: FontStyle.italic,color: Colors.lightGreen),),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Text('Forgot Password',style: TextStyle(fontStyle: FontStyle.italic,color: Colors.lightGreen),),
                      )
                    ],
                  ),
                ),

              ],
            ),
          ],
        ),
      ),);
  }
}
