import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Geniepage extends StatefulWidget {
  const Geniepage({super.key});

  @override
  State<Geniepage> createState() => _GeniepageState();
}

class _GeniepageState extends State<Geniepage> {
  int disc=0;

  int change() {
    if (disc == 3) {
      disc = 0;
    } else {
      disc++;
    }
    return disc;
  }

  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height *0.5+5,
              width: width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xffe4ddfe),
                      Color(0xffdad3fc),
                      Color(0xffd1c9fa),
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Row(
                      children: [
                        Icon(CupertinoIcons.house_fill),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w800),
                        ),
                        Icon(
                          CupertinoIcons.chevron_down,
                          size: 20,
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Icon(
                          CupertinoIcons.person_circle_fill,
                          size: 40,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, left: 20),
                    child: Row(
                      children: [
                        Text(
                          "603 Ramipark,Ramipark Society,Royal Stra..",
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                      ],
                    ),
                  ),

                  Divider(
                    color: Colors.black26,
                    thickness: 1,
                    endIndent: 25,
                    indent: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                            "genie",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                color: Colors.deepPurple),
                          ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20, top: 4),
                        child: Column(
                          children: [
                            Text(
                              "Delivering from",
                              style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "7 am - 3 am",
                              style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height*0.1-45,),

                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                             Padding(
                               padding: const EdgeInsets.only(bottom: 40),
                               child: Text(
                                    " Pick up or drop\n\n off anything \n\n instantiy",
                                    style: TextStyle(
                                      height: 0.6,
                                        color: Colors.deepPurple.shade300,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w600,),
                                  ),
                             ),

                          Container(
                                height: height*0.3-27,
                                width: width*0.5+42,
                                decoration: BoxDecoration(
                                  // color: Colors.black45,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/img/j2.png"),
                                      fit: BoxFit.cover),
                                ),
                          ),
                          ],
                      ),

                    ],

              ),
            ),
            SizedBox(height: height*0.050,),
            Container(
              height: height * 0.080,
              width: width * 0.850,
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Container(
                    height: height * 0.095,
                    width: width * 0.750,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.white),
                        borderRadius: BorderRadius.circular(15)),
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: height * 0.060,
                        autoPlay: true,
                        initialPage: _currentIndex,
                        onPageChanged: (index,reason){
                          setState(() {
                            _currentIndex=index;
                          });
                        }
                      ),
                      items: discount.map((i) {
                        return Builder(
                            builder: (context) => Row(
                              children: [
                                SizedBox(
                                  width: width * 0.060,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      discount[change()]['disc'],
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      discount[change()]['info'],
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: width * 0.060,
                                ),
                              ],
                            ));
                        //     Container(
                        //     margin: EdgeInsets.all(10),
                        //     height: height * 0.4,
                        //     width: width * 0.8,
                        //     decoration:BoxDecoration(
                        //         color: Colors.black,
                        //         image: DecorationImage(
                        //             image: AssetImage(featureList[change()]['disc'])
                        //         )
                        //     )
                        // );
                      }).toList(),
                    ),
                  ),
                  Text(
                    ' ${_currentIndex+1}/${discount.length}',
                    style: TextStyle(color: Colors.orange.shade700),
                  ),
                ],
              ),
            ),
            SizedBox(height: height*0.02,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: height*0.250,
                width: width/1.1,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.black12,blurRadius: 10,spreadRadius: 2,),
                    ],
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Pick up or send anything",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w500),),
                      Text("Sit bock, relax and let Genie do the rest",style: TextStyle(fontSize: 14),),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 40),
                        height: height*0.070,
                        width: width,
                        decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text(' Set Pick up & Drop Location   > ',style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.w800),),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Text('Do More With Genie',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
            )
          ],
        ),
      ),
    );
  }
}
List discount = [
  {'disc': 'Items at ₹199', 'info': 'ON SELECT ITEM |', },
  {
    'disc': '50% off upto ₹100',
    'info': 'USE SWIGGY50 | ABOVE ₹149',
  },
  {
    'disc': '30% off upto ₹75',
    'info': 'USE STEALDEAL | ABOVE ₹179',

  },
  {
    'disc': 'Flat ₹50 off',
    'info': 'NO CODE REQUIRED | ABOVE ₹600',
    'logo': '%'
  },
];
