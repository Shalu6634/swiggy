import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swiggy/screen/component/Dineout.dart';

import 'dialogBox.dart';

class offerpage extends StatefulWidget {
  const offerpage({super.key});

  @override
  State<offerpage> createState() => _offerpageState();
}

class _offerpageState extends State<offerpage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ...List.generate(
                  featureList.length,
                  (index) => Marquee(
                    child: Row(
                      children: [
                        SizedBox(
                          width: width * 0.01,
                        ),
                        Container(
                          height: height * 0.6,
                          width: width * 0.9 + 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.horizontal(left: Radius.circular(20),right: Radius.circular(20),),
                            image: DecorationImage(
                                image: AssetImage(
                                    '${featureList[selectedIndex]['img2']}'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: height * 0.1,
                  width: width * 0.1,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white12,
                  ),
                  child: Icon(
                    CupertinoIcons.arrow_left,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    margin: EdgeInsets.only(top: 250),
                    height: height * 0.220,
                    width: width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'OPEN TILL 11PM                              ',
                                style: TextStyle(
                                    color: Colors.grey.shade800, fontSize: 13),
                              ),
                              Icon(
                                CupertinoIcons.arrow_up_square,
                                color: Colors.grey.shade800,
                                size: 20,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(
                                CupertinoIcons.heart,
                                color: Colors.grey.shade800,
                                size: 20,
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Text(
                          dineOutHotelDetailList[selectedIndex]['name'],
                            style: TextStyle(
                                fontSize: height*0.025,
                                color: Colors.black,
                                fontWeight: FontWeight.w800),
                          ),
                          Text(
                            dineOutHotelDetailList[selectedIndex]['location'],
                            style: TextStyle(
                                fontSize: height*0.016,
                                color: Colors.black,
                            ),
                          ),

                          Text(
                            featureList[selectedIndex]['area'],
                            style: TextStyle(
                                fontSize: height*0.019,
                                color: Colors.black,
                                ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 22,
                                width: 22,
                                decoration: BoxDecoration(
                                  color: Colors.green.shade700,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ),
                              Text(
                                '  4.5',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w800),
                              ),
                              Text(
                                '  647 Google ratings',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w800),
                              ),
                              SizedBox(width: 30,),
                              Text(dineOutHotelDetailList[selectedIndex]['price'],
                                  style: TextStyle(
                                      fontSize: height*0.018,
                                      fontWeight: FontWeight.w800)),

                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    '  Pre-book offer   ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 20,
                    width: 100,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.yellow,
                              Colors.orange.shade900,
                            ]),
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      'ONE EXCLUSIVE',
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: height * 0.080,
                width: width,
                decoration: BoxDecoration(
                    color: Colors.pink.shade50,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Text(
                      '    Flat 20% Off on Total Bill                       ',
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                    Icon(
                      CupertinoIcons.arrow_right,
                      size: 18,
                    )
                  ],
                ),
              ),
            ),
            Text(
              '       Coupouns & Addional offer as applicable during bill payment',
              style: TextStyle(fontSize: 10, color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '    Walk-in offers',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '      Also applicable on table booking ',
              style: TextStyle(fontSize: 15, color: Colors.grey.shade700),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.all(10),
                height: height * 0.250,
                width: width * 0.450,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 0.5, color: Colors.grey)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '   Todays \n   Discount',
                        style: TextStyle(color: Colors.red.shade500),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        '    fLAT',
                        style: TextStyle(),
                      ),
                      Text(
                        '  10% off',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w800),
                      ),
                      Text(
                        '    on the bill',
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Text(
              '    Additionaol  offers',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '      Auto  applied when yoou pay via Dineout ',
              style: TextStyle(fontSize: 15, color: Colors.grey.shade700),
            ),
            //  Container(
            //      height: height * 0.080,
            //      width: width * 0.850,
            //      decoration: BoxDecoration(
            //          border: Border.all(width: 2, color: Colors.grey),
            //          borderRadius: BorderRadius.circular(15)),
            //      child: Row(
            //        children: [
            //          Container(
            //            height: height * 0.080,
            //            width: width * 0.750,
            //            decoration: BoxDecoration(
            //                border: Border.all(width: 2, color: Colors.white),
            //                borderRadius: BorderRadius.circular(15)),
            //            child: CarouselSlider(
            //              options: CarouselOptions(
            //                height: height * 0.050,
            //                autoPlay: true,
            //              ),
            //              items: discount.map((i) {
            //                return Builder(
            //                    builder: (context) => Row(
            //                      children: [
            //                        Text(discount[change()]['logo']),
            //                        SizedBox(
            //                          width: width * 0.060,
            //                        ),
            //                        Column(
            //                          children: [
            //                            Text(
            //                              discount[change()]['disc'],
            //                              style: TextStyle(
            //                                  color: Colors.black,
            //                                  fontSize: 18,
            //                                  fontWeight: FontWeight.bold),
            //                            ),
            //                            Text(
            //                              discount[change()]['info'],
            //                              style: TextStyle(fontSize: 10),
            //                            ),
            //                          ],
            //                        ),
            //                        SizedBox(
            //                          width: width * 0.060,
            //                        ),
            //                      ],
            //                    ));
            //                //     Container(
            //                //     margin: EdgeInsets.all(10),
            //                //     height: height * 0.4,
            //                //     width: width * 0.8,
            //                //     decoration:BoxDecoration(
            //                //         color: Colors.black,
            //                //         image: DecorationImage(
            //                //             image: AssetImage(featureList[change()]['disc'])
            //                //         )
            //                //     )
            //                // );
            //              }).toList(),
            //            ),
            //          ),
            //          Text(
            //            ' ${change()}/4',
            //            style: TextStyle(color: Colors.orange.shade700),
            //          ),
            //        ],
            //      ),
            // ),

            SizedBox(
              height: 10,
            ),
            Text(
              '    Menu',
              style: TextStyle(fontSize: 20),
            ),
            // GestureDetector(onTap: (){
            //   Navigator.of(context).pushNamed('/menu');
            // },
            //   child: Container(
            //       margin: EdgeInsets.all(10),
            //
            //       height: height * 0.150,
            //       width: width * 0.300,
            //       decoration: BoxDecoration(
            //           image: DecorationImage(
            //               fit: BoxFit.cover,
            //               opacity: 0.7,
            //               image: AssetImage(
            //                 'assets/images/menuPage/menu1.jfif',
            //               )
            //           ),
            //           borderRadius: BorderRadius.circular(10),
            //           border: Border.all(width: 0.5, color: Colors.grey))
            //   ),
            // ),
            Text(
              '       4 pages',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '    Location & timing',
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.location_solid,
                    color: Colors.grey,
                  ),
                  Text(
                    '    S NO G21-22 & B1 Ground Floor,The Palce,\n    Goddara Road,parvat, patiya near capital....,',
                    style: TextStyle(color: Colors.grey.shade700),
                  )
                ],
              ),
            ),
            Text(
              '           View on maps',
              style: TextStyle(
                  letterSpacing: 1,
                  color: Colors.orange.shade700,
                  fontWeight: FontWeight.w800),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.time,
                    color: Colors.grey.shade700,
                  ),
                  Text(
                    '    CLOSED, OPENS AT 11PM',
                    style: TextStyle(color: Colors.grey.shade700),
                  )
                ],
              ),
            ),
            Text(
              '           See weekly timing  call resturant',
              style: TextStyle(
                  letterSpacing: 1,
                  color: Colors.orange.shade700,
                  fontWeight: FontWeight.w800),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Divider(
                height: 2,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '      Features',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
            ),
            Text(
              '       Parking available                   SwiggyPay accepted',
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ),
            Text(
              '    Similar resturant',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
      floatingActionButton: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 30),
        height: height * 0.080,
        width: width,
        decoration: BoxDecoration(
            color: Colors.orange.shade900,
            borderRadius: BorderRadius.circular(10)),
        child: Text(
          'LOGIN TO GET OFFER',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}

List discount = [
  {'disc': 'Items at ₹199', 'info': 'ON SELECT ITEM |', 'logo': '%'},
  {
    'disc': '50% off upto ₹100',
    'info': 'USE SWIGGY50 | ABOVE ₹149',
    'logo': '%'
  },
  {
    'disc': '30% off upto ₹75',
    'info': 'USE STEALDEAL | ABOVE ₹179',
    'logo': '%'
  },
  {'disc': 'Flat ₹50 off', 'info': 'NO CODE REQUIRED | ABOVE ₹600', 'logo': '%'}
];


