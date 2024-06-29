// import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Near_meDetail extends StatefulWidget {
//   const Near_meDetail({super.key});
//
//   @override
//   State<Near_meDetail> createState() => _Near_meDetailState();
// }
//
// class _Near_meDetailState extends State<Near_meDetail> {
//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
//
//     return Scaffold(
//       body:   Container(
//         height: height * 0.4,
//         width: width * 5,
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             opacity: 0.8,
//             fit: BoxFit.cover,
//             image: AssetImage('assets/img/feature/spice villa.jpg'),
//           ),
//           borderRadius: BorderRadius.only(
//             bottomRight: Radius.circular(40),
//             bottomLeft: Radius.circular(40),
//           ),
//         ),
//         child: Stack(
//           children: [
//             Column(
//               children: [
//                 Row(
//                   children: [
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                         top: 30,
//                       ),
//                       child: Icon(
//                         CupertinoIcons.location_fill,
//                         color: Color(0xffe46c47),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 30, left: 10),
//                       child: Text(
//                         "Location ",
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 18,
//                             color: Colors.white),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 30),
//                       child: Icon(
//                         CupertinoIcons.chevron_down,
//                         size: 15,
//                       ),
//                     ),
//                   ],
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(right: 150),
//                   child: Text(
//                     "Dindoli, Surat - 394210",
//                     style: TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black87),
//                   ),
//                 ),
//               ],
//             ),
//             Padding(
//               padding:
//               const EdgeInsets.only(left: 10, right: 10, top: 90),
//               child: GestureDetector(
//                 onTap: () {
//                   Navigator.of(context).pushNamed('/search');
//                 },
//                 child: Container(
//                   height: height * 0.2,
//                   width: width,
//                   decoration: BoxDecoration(
//                       color: Color(0xffF1F0F5),
//                       borderRadius: BorderRadius.circular(17)),
//                   child: Padding(
//                     padding: const EdgeInsets.all(13.0),
//                     child: Row(
//                       children: [
//
//
//                         // VerticalDivider(
//                         //   thickness: 1.5,
//                         //   color: Colors.grey.shade400,
//                         //   endIndent: 5,
//                         //   indent: 5,
//                         // ),
//                         // Icon(
//                         //   Icons.mic,
//                         //   color: Color(0xfff1f4fb),
//                         // )
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//
//   }
// }
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Dineout.dart';

class offerpage extends StatefulWidget {
  const offerpage({super.key});

  @override
  State<offerpage> createState() => _offerpageState();
}

class _offerpageState extends State<offerpage> {

  List pizzaImageList =[
    'assets/img/pizza/pizza1.jpg',
    'assets/img/pizza/pizza2.jpeg',
    'assets/img/pizza/pizza4.jpg',
    'assets/img/pizza/pizza3.jpg',
    'assets/img/pizza/pizza5.jpeg',
    'assets/img/pizza/pizza6.jpeg',

  ];
  int change() {
    if (value == 6) {
      value = 0;
    } else {
      value++;
    }
    return value;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
             CarouselSlider.builder(itemCount: pizzaImageList.length, itemBuilder: (context, index, realIndex) {
               final urlImage = pizzaImageList[index];
               return buildImage(urlImage,index);
             } , options: CarouselOptions(height: 500))
          ],
        ),
      )
      // Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Stack(
      //       children: [
      //         Container(
      //           height: height * 0.6,
      //           width: width,
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.only(
      //                 bottomRight: Radius.circular(20),
      //                 bottomLeft: Radius.circular(20)),
      //             color: Colors.black,
      //             image: DecorationImage(
      //               fit: BoxFit.cover,
      //               // opacity: 0.1,
      //               image: AssetImage('assets/img/pizza/pizza1.jpg'),
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(top: 50, left: 10),
      //           height: height * 0.1,
      //           width: width * 0.1,
      //           decoration: BoxDecoration(
      //             shape: BoxShape.circle,
      //             color: Colors.white12,
      //           ),
      //           child: Icon(
      //             CupertinoIcons.arrow_left,
      //             color: Colors.black,
      //           ),
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(15.0),
      //           child: Container(
      //             margin: EdgeInsets.only(top: 230),
      //             height: height * 0.220,
      //             width: width,
      //             decoration: BoxDecoration(
      //                 color: Colors.white,
      //                 borderRadius: BorderRadius.circular(10)),
      //             child: Padding(
      //               padding: const EdgeInsets.all(15.0),
      //               child: Column(
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: [
      //                   Row(
      //                     children: [
      //                       Text(
      //                         'OPEN TILL 11PM                              ',
      //                         style: TextStyle(
      //                             color: Colors.grey.shade800, fontSize: 13),
      //                       ),
      //                       Icon(
      //                         CupertinoIcons.arrow_up_square,
      //                         color: Colors.grey.shade800,
      //                         size: 20,
      //                       ),
      //                       SizedBox(
      //                         width: 20,
      //                       ),
      //                       Icon(
      //                         CupertinoIcons.heart,
      //                         color: Colors.grey.shade800,
      //                         size: 20,
      //                       ),
      //                     ],
      //                   ),
      //                   Text(
      //                     'Pizza Hut',
      //                     style: TextStyle(
      //                         fontSize: 24,
      //                         color: Colors.black,
      //                         fontWeight: FontWeight.w800),
      //                   ),
      //                   Text(
      //                     'The Palace,Parvat Patiya,Surat',
      //                     style: TextStyle(
      //                         fontSize: 13, color: Colors.grey.shade800),
      //                   ),
      //                   Text(
      //                     ' Pizza,Fast Food',
      //                     style: TextStyle(
      //                         fontSize: 12, color: Colors.grey.shade700),
      //                   ),
      //                   SizedBox(
      //                     height: 10,
      //                   ),
      //                   Row(
      //                     children: [
      //                       Container(
      //                         alignment: Alignment.center,
      //                         height: 22,
      //                         width: 22,
      //                         decoration: BoxDecoration(
      //                           color: Colors.green.shade700,
      //                           shape: BoxShape.circle,
      //                         ),
      //                         child: Icon(
      //                           Icons.star,
      //                           color: Colors.white,
      //                           size: 15,
      //                         ),
      //                       ),
      //                       Text(
      //                         '  4.5',
      //                         style: TextStyle(
      //                             fontSize: 15, fontWeight: FontWeight.w800),
      //                       ),
      //                       Text(
      //                         '  647 Google ratings',
      //                         style: TextStyle(
      //                             fontSize: 13, fontWeight: FontWeight.w800),
      //                       ),
      //                       Text('    ₹800 ',
      //                           style: TextStyle(
      //                               fontSize: 15, fontWeight: FontWeight.w800)),
      //                       Text(
      //                         '  for two',
      //                         style: TextStyle(
      //                             fontSize: 13, fontWeight: FontWeight.w800),
      //                       ),
      //                     ],
      //                   )
      //                 ],
      //               ),
      //             ),
      //           ),
      //         )
      //       ],
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Row(
      //         children: [
      //           Text(
      //             '  Pre-book offer   ',
      //             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      //           ),
      //           Container(
      //             alignment: Alignment.center,
      //             height: 20,
      //             width: 100,
      //             decoration: BoxDecoration(
      //                 gradient: LinearGradient(
      //                     begin: Alignment.bottomCenter,
      //                     end: Alignment.bottomCenter,
      //                     colors: [
      //                       Colors.yellow,
      //                       Colors.orange.shade900,
      //                     ]),
      //                 borderRadius: BorderRadius.circular(5)),
      //             child: Text(
      //               'ONE EXCLUSIVE',
      //               style: TextStyle(color: Colors.white, fontSize: 13),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(15.0),
      //       child: Container(
      //         height: height * 0.080,
      //         width: width,
      //         decoration: BoxDecoration(
      //             color: Colors.pink.shade50,
      //             borderRadius: BorderRadius.circular(10)),
      //         child: Row(
      //           children: [
      //             Text(
      //               '    Flat 20% Off on Total Bill                       ',
      //               style: TextStyle(fontWeight: FontWeight.w800),
      //             ),
      //             Icon(
      //               CupertinoIcons.arrow_right,
      //               size: 18,
      //             )
      //           ],
      //         ),
      //       ),
      //     ),
      //     Text(
      //       '       Coupouns & Addional offer as applicable during bill payment',
      //       style: TextStyle(fontSize: 10, color: Colors.grey),
      //     )
      //   ],
      // ),
      // floatingActionButton: Container(
      //   alignment: Alignment.center,
      //   margin: EdgeInsets.only(left: 30),
      //   height: height * 0.080,
      //   width: width,
      //   decoration: BoxDecoration(
      //       color: Colors.orange.shade900,
      //       borderRadius: BorderRadius.circular(10)),
      //   child: Text(
      //     'LOGIN TO GET OFFER',
      //     style: TextStyle(
      //         color: Colors.white, fontSize: 20, fontWeight: FontWeight.w800),
      //   ),
      // ),
    );
  }
}

Widget buildImage(String urlImage ,  int index)=>Container(
  width: 600,
  margin: EdgeInsets.symmetric(),
  child: Image.asset(urlImage,),
);