import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DineOutScreen extends StatefulWidget {
  const DineOutScreen({super.key});

  @override
  State<DineOutScreen> createState() => _DineOutScreenState();
}

class _DineOutScreenState extends State<DineOutScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 100),
              child: Text(
                'WHAT`S HOT ON DINEOUT',
                style: TextStyle(fontWeight: FontWeight.w500, letterSpacing: 2),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: height * 0.1 - 35,
                    width: width * 0.5,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(child: Text('Trending resturant')),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: height * 0.1 - 35,
                    width: width * 0.5,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(child: Text('Deals of the day')),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: height * 0.1 - 35,
                    width: width * 0.5,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(child: Text('Pre-books offers')),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Wrap(
                    children: [
                      ...List.generate(
                        dineOutHotelDetailList.length,
                        (index) => dineOutBox(
                            height,
                            width,
                            dineOutHotelDetailList[index]['img'],
                            dineOutHotelDetailList[index]['name'],
                            dineOutHotelDetailList[index]['price'],
                            dineOutHotelDetailList[index]['distance'],
                            dineOutHotelDetailList[index]['location']),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, right: 70),
              child: Text(
                'HEY,WHAT`S ON YOUR MIND ?',
                style: TextStyle(fontWeight: FontWeight.w500, letterSpacing: 2),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  ...List.generate(
                    mindPlanList.length,
                    (index) => box2(
                        img1: mindPlanList[index]['img1'],
                        name1: mindPlanList[index]['name1'],
                        width: width,
                        height: height),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 140),
              child: Text(
                'FEATURED THIS WEEK',
                style: TextStyle(fontWeight: FontWeight.w500, letterSpacing: 2),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: height * 0.4,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 1),
              ),
              items: List.generate(
                      featureList.length, (index) => buildContainer(context))
                  .map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20)),
                    );
                  },
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }

  Container buildContainer(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}

Padding box2(
    {required String img1,
    required String name1,
    required double height,
    required double width}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: height * 0.2,
      width: width * 0.4 - 15,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black26,
                blurRadius: 3,
                spreadRadius: 1,
                offset: Offset(2, 2))
          ]),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 115, left: 25),
            child: Text(
              name1,
              style: TextStyle(fontSize: 13),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3, top: 5, left: 5),
            child: Container(
              height: 110,
              width: 120,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(img1))),
            ),
          )
        ],
      ),
    ),
  );
}

Widget dineOutBox(double height, double width, String img, String name,
    String price, String distance, String location) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: height * 0.3 + 33,
      width: width * 0.9 - 4,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(img),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 170),
        child: Container(
          height: height * 0.1,
          width: width * 0.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15)),
            color: Colors.white,
            border: Border.all(color: Colors.black12),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    width: 110,
                  ),
                  Text(
                    price,
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    location,
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(width: 42),
                  Text(
                    distance,
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

List dineOutHotelDetailList = [
  {
    'name': 'Pizza- Fast Food',
    'img': 'assets/img/hotel/pizzaHut.jpg',
    'location': 'The Palace,Parvat Patiya ,surat',
    'distance': '1.6km',
    'price': '800 for 2'
  },
  {
    'name': 'Continental-Beverage',
    'img': 'assets/img/hotel/marrito.jpg',
    'location': 'Surat Marriott Hotel,surat',
    'distance': '9.7km',
    'price': '2000 for 2'
  },
  {
    'name': 'North-south Indian',
    'img': 'assets/img/hotel/bhagwati.jpeg',
    'location': 'Science Centre Building,City Light',
    'distance': '9.2km',
    'price': '1400 for 2'
  },
  {
    'name': 'Chinese-Italian',
    'img': 'assets/img/hotel/dil se.webp',
    'location': 'Imperial Mall,Adajan Gam,Surat',
    'distance': '9.7km',
    'price': '800 for 2'
  },
  {
    'name': 'North Indian',
    'img': 'assets/img/hotel/blue.jpg',
    'location': 'Hotel Lords Plaza',
    'distance': '4.9km',
    'price': '1000 for 2'
  },
  {
    'name': 'Continental-Indian',
    'img': 'assets/img/hotel/marriott.jpg',
    'location': 'Surat Marriott Hotel, Athwa',
    'distance': '9.7km',
    'price': '3000 for 2'
  },
  {
    'name': 'Chinese-Sushi',
    'img': 'assets/img/hotel/ch.jpg',
    'location': 'Surat , Athwa',
    'distance': '9.7km',
    'price': '1500 for 2'
  },
  {
    'name': 'Continental-Italian',
    'img': 'assets/img/hotel/Mirchi.webp',
    'location': 'Surat , Vesu ',
    'distance': '10.7km',
    'price': '800 for 2'
  },
  {
    'name': 'Continental-Maxican',
    'img': 'assets/img/hotel/skyhotel.jpg',
    'location': 'Adajan Gam,Surat',
    'distance': '10.1km',
    'price': '1000 for 2'
  },
];

List mindPlanList = [
  {
    'name1': 'Live match screening',
    'img1': 'assets/img/plan/live-screening.jpg'
  },
  {'name1': 'RoofTop & Outdoors', 'img1': 'assets/img/plan/outdoors.jpg'},
  {'name1': 'Buffets', 'img1': 'assets/img/plan/buffets.jpeg'},
  {'name1': 'Quick bites', 'img1': 'assets/img/plan/quick bites.jpg'},
  {'name1': 'Pure Veg', 'img1': 'assets/img/plan/veg.jpeg'},
  {'name1': 'Family friendly', 'img1': 'assets/img/plan/family.jpeg'},
  {'name1': 'Budget friendly', 'img1': 'assets/img/plan/budget.jpeg'},
];

List featureList = [
  {
    'name2': 'Wok on Fire',
    'img2': 'assets/img/feature/wok on fire.webp',
  },
  {
    'name2': 'Indian Mehfil',
    'img2': 'assets/img/feature/indian.jpeg',
  },
  {'name2': 'Masala Mania', 'img2': 'assets/img/feature/masala.jpg'},
  {'name2': 'Masala Mania', 'img2': 'assets/img/feature/masala.jpg'},
  {
    'name2': 'Pavilion',
    'img2': 'assets/img/feature/pavilion.jpg',
  },
  {
    'name2': 'Spice Villa',
    'img2': 'assets/img/feature/spice villa.jpg',
  },
  {'name2': 'JackMex', 'img2': 'assets/img/feature/jack.jpg'}
];
