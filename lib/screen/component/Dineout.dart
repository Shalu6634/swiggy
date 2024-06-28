import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DineOutScreen extends StatefulWidget {
  const DineOutScreen({super.key});

  @override
  State<DineOutScreen> createState() => _DineOutScreenState();
}

class _DineOutScreenState extends State<DineOutScreen> {
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
    GestureDetector(
      onTap: () {
        setState(() {
          ch = !ch;
        });
      },
    );
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height * 0.4,
              width: width * 5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  opacity: 0.8,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/img/feature/spice villa.jpg'),
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40),
                ),
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 30,
                            ),
                            child: Icon(
                              CupertinoIcons.location_fill,
                              color: Color(0xffe46c47),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30, left: 10),
                            child: Text(
                              "Location ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Icon(
                              CupertinoIcons.chevron_down,
                              size: 15,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 150),
                        child: Text(
                          "Dindoli, Surat - 394210",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 90),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/search');
                      },
                      child: Container(
                        height: height * 0.065,
                        width: width,
                        decoration: BoxDecoration(
                            color: Color(0xffF1F0F5),
                            borderRadius: BorderRadius.circular(17)),
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Row(
                            children: [
                              Text(
                                'Search for ',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                              Expanded(
                                child: AnimatedTextKit(
                                  animatedTexts: [
                                    RotateAnimatedText(
                                      "'Burger'",
                                      duration: Duration(seconds: 1),
                                      textStyle: TextStyle(color: Colors.grey),
                                    ),
                                    RotateAnimatedText(
                                      "'Cake'",
                                      duration: Duration(seconds: 1),
                                      textStyle: TextStyle(color: Colors.grey),
                                    ),
                                    RotateAnimatedText(
                                      "'Pizza'",
                                      duration: Duration(seconds: 1),
                                      textStyle: TextStyle(color: Colors.grey),
                                    ),
                                    RotateAnimatedText(
                                      "'Biryani'",
                                      duration: Duration(seconds: 1),
                                      textStyle: TextStyle(color: Colors.grey),
                                    ),
                                    RotateAnimatedText(
                                      "'Rolls'",
                                      duration: Duration(seconds: 1),
                                      textStyle: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                  repeatForever: true,
                                  pause: Duration(milliseconds: 500),
                                ),
                              ),
                              SizedBox(
                                width: width * 0.3,
                              ),
                              Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),
                              VerticalDivider(
                                thickness: 1.5,
                                color: Colors.grey.shade400,
                                endIndent: 5,
                                indent: 5,
                              ),
                              Icon(
                                Icons.mic,
                                color: Color(0xfff1f4fb),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: height * 0.2,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
              ),
              items: featureList.map((i) {
                // print('shalu $i');
                return Builder(
                  builder: (context) => Container(
                    margin: EdgeInsets.all(5),
                    // padding: EdgeInsets.symmetric(horizontal: 10),
                    height: height * 0.3,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        opacity: 0.8,
                        fit: BoxFit.cover,
                        image: AssetImage(bannerList[change()]['banner']),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            Padding(
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
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        choice = 1;
                      });
                    },
                    child: Container(
                      height: height * 0.1 - 35,
                      width: width * 0.5,
                      decoration: BoxDecoration(
                        color: (choice == 1) ? Colors.black : null,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Center(
                        child: Text(
                          'Trending resturant',
                          style: TextStyle(
                              color:
                                  (choice == 1) ? Colors.white : Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        choice = 2;
                        print(choice);
                      });
                    },
                    child: Container(
                      height: height * 0.1 - 35,
                      width: width * 0.5,
                      decoration: BoxDecoration(
                        color: (choice == 2) ? Colors.black : null,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Center(
                        child: Text(
                          'Deals of the day',
                          style: TextStyle(
                              color: (choice == 2) ? Colors.white : null),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        choice = 3;
                      });
                    },
                    child: Container(
                      height: height * 0.1 - 35,
                      width: width * 0.5,
                      decoration: BoxDecoration(
                        color: (choice == 3) ? Colors.black : Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Center(
                          child: Text(
                        'Pre-books offers',
                        style: TextStyle(
                            color: (choice == 3) ? Colors.white : null),
                      )),
                    ),
                  ),
                ],
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
                    width: 10,
                  ),
                  Wrap(
                    children: [
                      ...List.generate(
                        dineOutHotelDetailList.length,
                        (index) => dineOutBox(
                          height,
                          width,
                          (choice == 1)
                              ? dineOutHotelDetailList[index]['img']
                              : (choice == 2)
                                  ? dineOutHotelDetailList2[index]['img']
                                  : dineOutHotelDetailList3[index]['img'],
                          (choice == 1)
                              ? dineOutHotelDetailList[index]['name']
                              : (choice == 2)
                                  ? dineOutHotelDetailList2[index]['name']
                                  : dineOutHotelDetailList3[index]['name'],
                          (choice == 1)
                              ? dineOutHotelDetailList[index]['price']
                              : (choice == 2)
                                  ? dineOutHotelDetailList2[index]['price']
                                  : dineOutHotelDetailList3[index]['price'],
                          (choice == 1)
                              ? dineOutHotelDetailList[index]['distance']
                              : (choice == 2)
                                  ? dineOutHotelDetailList2[index]['distance']
                                  : dineOutHotelDetailList3[index]['distance'],
                          (choice == 1)
                              ? dineOutHotelDetailList[index]['location']
                              : (choice == 2)
                                  ? dineOutHotelDetailList2[index]['location']
                                  : dineOutHotelDetailList3[index]['location'],
                          (choice == 1)
                              ? dineOutHotelDetailList[index]['rate']
                              : (choice == 2)
                                  ? dineOutHotelDetailList2[index]['rate']
                                  : dineOutHotelDetailList3[index]['rate'],
                        ),
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
            SizedBox(
              height: 10,
            ),
            Wrap(
              children: [
                SizedBox(
                  height: 10,
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
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 140),
              child: Text(
                'FEATURED THIS WEEK',
                style: TextStyle(fontWeight: FontWeight.w500, letterSpacing: 2),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: height * 0.4,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 1),
              ),
              items: featureList.map((i) {
                // print('shalu $i');
                return Builder(
                  builder: (context) => Container(
                    margin: EdgeInsets.all(10),
                    height: height * 0.4,
                    width: width * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        opacity: 0.9,
                        image: AssetImage(featureList[change()]['img2']),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: height * 0.400 - 20,
                          width: width * 0.8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(color: Colors.black45, blurRadius: 2)
                              ]),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 200,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 129),
                                child: Text(
                                  featureList[change()]['discount'],
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 135),
                                child: Text(
                                  featureList[change()]['name2'],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    featureList[change()]['area'],
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                  SizedBox(
                                    width: 183,
                                  ),
                                  Icon(
                                    Icons.arrow_circle_right_outlined,
                                    color: Colors.white,
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 110, left: 25),
                  child: Text(
                    'POPULAR LOCATION',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, letterSpacing: 2),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                children: [
                  SizedBox(
                    width: 22,
                  ),
                  ...List.generate(
                    7,
                    (index) => Container(
                      margin: EdgeInsets.all(10),
                      height: height * 0.1 + 30,
                      width: width * 0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(34),
                        // color: Colors.grey,
                        image: DecorationImage(
                          image: AssetImage(diamondList[index]['box']),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 145),
              child: Text(
                'EXPLORE CRAVINGS',
                style: TextStyle(fontWeight: FontWeight.w500, letterSpacing: 2),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    imagelist.length,
                    (index) => Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage(imagelist[index]['image']),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(
                          imagelist[index]['foodName'],
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  GestureDetector(
                    onTap: () {
                      // setState(() {
                      //   BottomSheet(onClosing: () {
                      //
                      //   }, builder: (context) => );
                      // });
                    },
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          showModalBottomSheet(
                            backgroundColor: Colors.white,
                            context: context,
                            builder: (context) => Container(
                              // height: height * 1 * 2,
                              width: width * 0.9 + 50,

                              child: Column(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '  Filter',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                Navigator.of(context).pop();
                                              });
                                            },
                                            child: Icon(Icons.close)),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    thickness: 1,
                                  ),
                                  Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Sort by',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),

                                      Text('Book a table', style: TextStyle(
                                          fontWeight: FontWeight.bold),),

                                      Text('Within 5km', style: TextStyle(
                                          fontWeight: FontWeight.bold),),

                                      Text('Pure Veg', style: TextStyle(
                                          fontWeight: FontWeight.bold),),

                                      Text('Rating 4+', style: TextStyle(
                                          fontWeight: FontWeight.bold),),

                                      Text('Server Alcohol', style: TextStyle(
                                          fontWeight: FontWeight.bold),),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Filter',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                            ),
                            Image.asset(
                              'assets/img/filter.png',
                              color: Colors.black,
                              height: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black12)),
                    child: Center(
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton2<String>(
                          isExpanded: true,
                          hint: Text(
                            'Sort by',
                            style: TextStyle(
                              fontSize: 14,
                              color: Theme.of(context).hintColor,
                            ),
                          ),
                          items: items.map((item) {
                            return DropdownMenuItem(
                              value: item,
                              //disable default onTap to avoid closing menu when selecting an item
                              enabled: false,
                              child: StatefulBuilder(
                                builder: (context, menuSetState) {
                                  final isSelected =
                                      selectedItems.contains(item);
                                  return InkWell(
                                    onTap: () {
                                      isSelected
                                          ? selectedItems.remove(item)
                                          : selectedItems.add(item);
                                      //This rebuilds the StatefulWidget to update the button's text
                                      setState(() {});
                                      //This rebuilds the dropdownMenu Widget to update the check mark
                                      menuSetState(() {});
                                    },
                                    child: Container(
                                      height: double.infinity,
                                      width: 300,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              item,
                                              style: const TextStyle(
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),

                                          SizedBox(
                                            width: 30,
                                          ),
                                          if (isSelected)
                                            const Icon(
                                              Icons
                                                  .radio_button_checked_outlined,
                                              color: Colors.deepOrange,
                                            )
                                          else
                                            const Icon(
                                              Icons.radio_button_off,
                                            ),
                                          // const SizedBox(width: 16),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            );
                          }).toList(),
                          //Use last selected item as the current value so if we've limited menu height, it scroll to last item.
                          value:
                              selectedItems.isEmpty ? null : selectedItems.last,
                          onChanged: (value) {},
                          selectedItemBuilder: (context) {
                            return items.map(
                              (item) {
                                return Container(
                                  alignment: AlignmentDirectional.center,
                                  child: Text(
                                    selectedItems.join(', '),
                                    style: const TextStyle(
                                      fontSize: 14,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    maxLines: 1,
                                  ),
                                );
                              },
                            ).toList();
                          },
                          buttonStyleData: const ButtonStyleData(
                            padding: EdgeInsets.only(left: 16, right: 8),
                            height: 40,
                            width: 180,
                          ),
                          menuItemStyleData: MenuItemStyleData(
                            height: 40,
                            padding: EdgeInsets.zero,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black12)),
                    child: Center(
                      child: Text(
                        'Book a table',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    height: 40,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black12)),
                    child: Center(
                      child: Text(
                        'Within 5km',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    height: 40,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black12)),
                    child: Center(
                      child: Text(
                        'Pure Veg',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    height: 40,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black12)),
                    child: Center(
                      child: Text(
                        'Rating 4+',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black12)),
                    child: Center(
                      child: Text(
                        'Serves Alcohol',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 80),
              child: Text(
                '518 restaurants to explore',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 19),
              ),
            ),
            Wrap(
              children: [
                ...List.generate(
                  dineOutHotelDetailList.length,
                  (index) => dineOutBox(
                    height,
                    width,
                    (choice == 1)
                        ? dineOutHotelDetailList[index]['img']
                        : (choice == 2)
                            ? dineOutHotelDetailList2[index]['img']
                            : dineOutHotelDetailList3[index]['img'],
                    (choice == 1)
                        ? dineOutHotelDetailList[index]['name']
                        : (choice == 2)
                            ? dineOutHotelDetailList2[index]['name']
                            : dineOutHotelDetailList3[index]['name'],
                    (choice == 1)
                        ? dineOutHotelDetailList[index]['price']
                        : (choice == 2)
                            ? dineOutHotelDetailList2[index]['price']
                            : dineOutHotelDetailList3[index]['price'],
                    (choice == 1)
                        ? dineOutHotelDetailList[index]['distance']
                        : (choice == 2)
                            ? dineOutHotelDetailList2[index]['distance']
                            : dineOutHotelDetailList3[index]['distance'],
                    (choice == 1)
                        ? dineOutHotelDetailList[index]['location']
                        : (choice == 2)
                            ? dineOutHotelDetailList2[index]['location']
                            : dineOutHotelDetailList3[index]['location'],
                    (choice == 1)
                        ? dineOutHotelDetailList[index]['rate']
                        : (choice == 2)
                            ? dineOutHotelDetailList2[index]['rate']
                            : dineOutHotelDetailList3[index]['rate'],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Container buildContainer(BuildContext context, String img2) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(img2),
          )),
    );
  }
}

Widget box2(
    {required String img1,
    required String name1,
    required double height,
    required double width}) {
  return Container(
    margin: EdgeInsets.all(6),
    height: height * 0.2 - 25,
    width: width * 0.292,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 3,
          spreadRadius: 1,
          offset: Offset(1, 1),
        ),
      ],
    ),
    child: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 95, left: 25),
          child: Text(
            name1,
            style:
                TextStyle(height: 1, fontSize: 13, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5, top: 5, left: 5),
          child: Container(
            height: height * 0.1 + 10,
            width: width * 0.4,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(img1),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget dineOutBox(double height, double width, String img, String name,
    String price, String distance, String location, String rate) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
        height: height * 0.4 - 30,
        width: width * 0.9 - 4,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(img),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 270, top: 7),
              child: Icon(
                Icons.favorite_border,
                color: Colors.white,
                size: 27,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100.9),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: height * 0.1 - 26,
                width: width * 0.9,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    // borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          spreadRadius: 2)
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // SizedBox(
                    //   width: 6,
                    // ),
                    Text(
                      name,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    // SizedBox(
                    //   width: 146.7,
                    // ),
                    Text(
                      '⭐${rate}',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: height * 0.117,
              width: width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                color: Colors.white,
                border: Border.all(color: Colors.black12),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        name,
                        style: TextStyle(fontSize: 13),
                      ),
                      Text(
                        price,
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        location,
                        style: TextStyle(fontSize: 13),
                      ),
                      Text(
                        distance,
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: height * 0.040,
                      width: width * 0.8 + 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF1BA26E),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'assets/img/discount.png',
                            height: 15,
                          ),
                          Text(
                            'Flat 20% off on pre-booking',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            '+2 more',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ],
        )),
  );
}

List dineOutHotelDetailList = [

  {
    'name': 'Pizza-hut..',
    'img': 'assets/img/hotel/pizzaHut.jpg',
    'location': 'The Palace,Parvat Patiya ,surat',
    'distance': '1.6km',
    'price': '800 for 2',
    'rate': '4.5',
  },
  {
    'name': 'Spice-Vila',
    'img': 'assets/img/hotel/marrito.jpg',
    'location': 'Surat Marriott Hotel,surat',
    'distance': '9.7km',
    'price': '2000 for 2',
    'rate': '6.5',
  },
  {
    'name': 'South Indian',
    'img': 'assets/img/hotel/bhagwati.jpeg',
    'location': 'Science Centre Building,City Light',
    'distance': '9.2km',
    'price': '1400 for 2',
    'rate': '3.5',
  },
  {
    'name': 'Indian-Chinese',
    'img': 'assets/img/hotel/dil se.webp',
    'location': 'Imperial Mall,Adajan Gam,Surat',
    'distance': '9.7km',
    'price': '800 for 2',
    'rate': '3.5',
  },
  {
    'name': 'North Indian',
    'img': 'assets/img/hotel/blue.jpg',
    'location': 'Hotel Lords Plaza',
    'distance': '4.9km',
    'price': '1000 for 2',
    'rate': '4.1',
  },
  {
    'name': 'Chinese',
    'img': 'assets/img/hotel/marriott.jpg',
    'location': 'Surat Marriott Hotel, Athwa',
    'distance': '9.7km',
    'price': '3000 for 2',
    'rate': '3.8',
  },
  {
    'name': 'South Indian',
    'img': 'assets/img/hotel/h3.jpg',
    'location': 'Pravat Patiya',
    'distance': '9km',
    'price': '1300 for 2',
    'rate': '3.7',
  },
  {
    'name': 'Sushi',
    'img': 'assets/img/hotel/h2.jpg',
    'location': 'Surat , Athwa',
    'distance': '9.7km',
    'price': '1500 for 2',
    'rate': '4.0',
  },
  {
    'name': 'Sushi',
    'img': 'assets/img/hotel/ch.jpg',
    'location': 'Surat , Athwa',
    'distance': '9.7km',
    'price': '1500 for 2',
    'rate': '4.0',
  },
  {
    'name': 'Spice-Vila',
    'img': 'assets/img/hotel/h7.jpg',
    'location': 'Surat Marriott Hotel,surat',
    'distance': '9.7km',
    'price': '2000 for 2',
    'rate': '6.5',
  },
  {
    'name': 'Italian-food',
    'img': 'assets/img/hotel/Mirchi.webp',
    'location': 'Surat , Vesu ',
    'distance': '10.7km',
    'price': '800 for 2',
    'rate': '4.3',
  },
  {
    'name': 'Indian-food',
    'img': 'assets/img/hotel/h1.jpg',
    'location': 'Surat , Dindoli ',
    'distance': '10km',
    'price': '900 for 2',
    'rate': '4.3',
  },
  {
    'name': 'Maxican',
    'img': 'assets/img/hotel/skyhotel.jpg',
    'location': 'Adajan Gam,Surat',
    'distance': '10.1km',
    'price': '1000 for 2',
    'rate': '4.4',
  },
  {
    'name': 'Spice-Vila',
    'img': 'assets/img/hotel/h6.jpg',
    'location': 'Surat Marriott Hotel,surat',
    'distance': '9.7km',
    'price': '2000 for 2',
    'rate': '6.5',
  },

];
List dineOutHotelDetailList2 = [
  {
    'name': 'Indian-Chinese',
    'img': 'assets/img/hotel/dil se.webp',
    'location': 'Imperial Mall,Adajan Gam,Surat',
    'distance': '9.7km',
    'price': '800 for 2',
    'rate': '3.5',
  },
  {
    'name': 'North Indian',
    'img': 'assets/img/hotel/h7.jpg',
    'location': 'Hotel Lords Plaza',
    'distance': '4.9km',
    'price': '1000 for 2',
    'rate': '4.1',
  },
  {
    'name': 'Indian-food',
    'img': 'assets/img/hotel/h1.jpg',
    'location': 'Surat , Dindoli ',
    'distance': '10km',
    'price': '900 for 2',
    'rate': '4.3',
  },

  {
    'name': 'Italian-food',
    'img': 'assets/img/hotel/h5.webp',
    'location': 'Surat , Vesu ',
    'distance': '10.7km',
    'price': '800 for 2',
    'rate': '4.3',
  },
  {
    'name': 'North Indian',
    'img': 'assets/img/hotel/h4.jpg',
    'location': 'Hotel Lords Plaza',
    'distance': '4.9km',
    'price': '1000 for 2',
    'rate': '4.1',
  },
  {
    'name': 'Indian-food',
    'img': 'assets/img/hotel/h1.jpg',
    'location': 'Surat , Dindoli ',
    'distance': '10km',
    'price': '900 for 2',
    'rate': '4.3',
  },

  {
    'name': 'Italian-food',
    'img': 'assets/img/hotel/h3.webp',
    'location': 'Surat , Vesu ',
    'distance': '10.7km',
    'price': '800 for 2',
    'rate': '4.3',
  },
  {
    'name': 'Chinese',
    'img': 'assets/img/hotel/marriott.jpg',
    'location': 'Surat Marriott Hotel, Athwa',
    'distance': '9.7km',
    'price': '3000 for 2',
    'rate': '3.8',
  },
  {
    'name': 'Maxican',
    'img': 'assets/img/hotel/skyhotel.jpg',
    'location': 'Adajan Gam,Surat',
    'distance': '10.1km',
    'price': '1000 for 2',
    'rate': '4.4',
  },
  {
    'name': 'Pizza-hut..',
    'img': 'assets/img/hotel/pizzaHut.jpg',
    'location': 'The Palace,Parvat Patiya ,surat',
    'distance': '1.6km',
    'price': '800 for 2',
    'rate': '4.5',
  },
  {
    'name': 'Spice-Vila',
    'img': 'assets/img/hotel/h6.jpg',
    'location': 'Surat Marriott Hotel,surat',
    'distance': '9.7km',
    'price': '2000 for 2',
    'rate': '6.5',
  },
  {
    'name': 'Spice-Vila',
    'img': 'assets/img/hotel/marrito.jpg',
    'location': 'Surat Marriott Hotel,surat',
    'distance': '9.7km',
    'price': '2000 for 2',
    'rate': '6.5',
  },
  {
    'name': 'Spice-Vila',
    'img': 'assets/img/hotel/h1.jpg',
    'location': 'Surat Marriott Hotel,surat',
    'distance': '9.7km',
    'price': '2000 for 2',
    'rate': '6.5',
  },
  {
    'name': 'South Indian',
    'img': 'assets/img/hotel/bhagwati.jpeg',
    'location': 'Science Centre Building,City Light',
    'distance': '9.2km',
    'price': '1400 for 2',
    'rate': '3.5',
  },
  {
    'name': 'Spice-Vila',
    'img': 'assets/img/hotel/h6.jpg',
    'location': 'Surat Marriott Hotel,surat',
    'distance': '9.7km',
    'price': '2000 for 2',
    'rate': '6.5',
  },
  {
    'name': 'Sushi',
    'img': 'assets/img/hotel/ch.jpg',
    'location': 'Surat , Athwa',
    'distance': '9.7km',
    'price': '1500 for 2',
    'rate': '4.0',
  },
  {
    'name': 'South Indian',
    'img': 'assets/img/hotel/h3.jpg',
    'location': 'Pravat Patiya',
    'distance': '9km',
    'price': '1300 for 2',
    'rate': '3.7',
  },
  {
    'name': 'Sushi',
    'img': 'assets/img/hotel/h2.jpg',
    'location': 'Surat , Athwa',
    'distance': '9.7km',
    'price': '1500 for 2',
    'rate': '4.0',
  },
];
List dineOutHotelDetailList3 = [
  {
    'name': 'Spice-Vila',
    'img': 'assets/img/hotel/marrito.jpg',
    'location': 'Surat Marriott Hotel,surat',
    'distance': '9.7km',
    'price': '2000 for 2',
    'rate': '6.5',
  },
  {
    'name': 'Spice-Vila',
    'img': 'assets/img/hotel/h6.jpg',
    'location': 'Surat Marriott Hotel,surat',
    'distance': '9.7km',
    'price': '2000 for 2',
    'rate': '6.5',
  },
  {
    'name': 'South Indian',
    'img': 'assets/img/hotel/bhagwati.jpeg',
    'location': 'Science Centre Building,City Light',
    'distance': '9.2km',
    'price': '1400 for 2',
    'rate': '3.5',
  },
  {
    'name': 'South Indian',
    'img': 'assets/img/hotel/h3.jpg',
    'location': 'Pravat Patiya',
    'distance': '9km',
    'price': '1300 for 2',
    'rate': '3.7',
  },
  {
    'name': 'North Indian',
    'img': 'assets/img/hotel/h7.jpg',
    'location': 'Hotel Lords Plaza',
    'distance': '4.9km',
    'price': '1000 for 2',
    'rate': '4.1',
  },
  {
    'name': 'Indian-food',
    'img': 'assets/img/hotel/h1.jpg',
    'location': 'Surat , Dindoli ',
    'distance': '10km',
    'price': '900 for 2',
    'rate': '4.3',
  },
  {
    'name': 'Sushi',
    'img': 'assets/img/hotel/h2.jpg',
    'location': 'Surat , Athwa',
    'distance': '9.7km',
    'price': '1500 for 2',
    'rate': '4.0',
  },
  {
    'name': 'Indian-Chinese',
    'img': 'assets/img/hotel/dil se.webp',
    'location': 'Imperial Mall,Adajan Gam,Surat',
    'distance': '9.7km',
    'price': '800 for 2',
    'rate': '3.5',
  },
  {
    'name': 'Pizza-hut..',
    'img': 'assets/img/hotel/pizzaHut.jpg',
    'location': 'The Palace,Parvat Patiya ,surat',
    'distance': '1.6km',
    'price': '800 for 2',
    'rate': '4.5',
  },
  {
    'name': 'Spice-Vila',
    'img': 'assets/img/hotel/h6.jpg',
    'location': 'Surat Marriott Hotel,surat',
    'distance': '9.7km',
    'price': '2000 for 2',
    'rate': '6.5',
  },
  {
    'name': 'North Indian',
    'img': 'assets/img/hotel/h7.jpg',
    'location': 'Hotel Lords Plaza',
    'distance': '4.9km',
    'price': '1000 for 2',
    'rate': '4.1',
  },
  {
    'name': 'Indian-food',
    'img': 'assets/img/hotel/h1.jpg',
    'location': 'Surat , Dindoli ',
    'distance': '10km',
    'price': '900 for 2',
    'rate': '4.3',
  },
  {
    'name': 'North Indian',
    'img': 'assets/img/hotel/blue.jpg',
    'location': 'Hotel Lords Plaza',
    'distance': '4.9km',
    'price': '1000 for 2',
    'rate': '4.1',
  },
  {
    'name': 'Indian-food',
    'img': 'assets/img/hotel/h1.jpg',
    'location': 'Surat , Dindoli ',
    'distance': '10km',
    'price': '900 for 2',
    'rate': '4.3',
  },
  {
    'name': 'Chinese',
    'img': 'assets/img/hotel/marriott.jpg',
    'location': 'Surat Marriott Hotel, Athwa',
    'distance': '9.7km',
    'price': '3000 for 2',
    'rate': '3.8',
  },
  {
    'name': 'Sushi',
    'img': 'assets/img/hotel/ch.jpg',
    'location': 'Surat , Athwa',
    'distance': '9.7km',
    'price': '1500 for 2',
    'rate': '4.0',
  },
  {
    'name': 'Italian-food',
    'img': 'assets/img/hotel/Mirchi.webp',
    'location': 'Surat , Vesu ',
    'distance': '10.7km',
    'price': '800 for 2',
    'rate': '4.3',
  },
  {
    'name': 'Maxican',
    'img': 'assets/img/hotel/skyhotel.jpg',
    'location': 'Adajan Gam,Surat',
    'distance': '10.1km',
    'price': '1000 for 2',
    'rate': '4.4',
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
];

List featureList = [
  {
    'name2': 'Wok on Fire',
    'img2': 'assets/img/feature/wok on fire.webp',
    'area': 'Vesu',
    'discount': 'FLAT 25% OFF',
  },
  {
    'name2': 'Indian Mehfil',
    'img2': 'assets/img/feature/indian.jpeg',
    'area': 'Surat',
    'discount': 'FLAT 15% OFF',
  },
  {
    'name2': 'Masala Mania',
    'img2': 'assets/img/feature/masala.jpg',
    'area': 'Athwa',
    'discount': 'FLAT 20% OFF',
  },
  {
    'name2': 'Pavilion',
    'img2': 'assets/img/feature/masala.jpg',
    'area': 'Surat',
    'discount': 'FLAT 27% OFF',
  },
  {
    'name2': 'Pavilion',
    'img2': 'assets/img/feature/pavilion.jpg',
    'area': 'Piplod',
    'discount': 'FLAT 20% OFF',
  },
  {
    'name2': 'Spice Villa',
    'img2': 'assets/img/feature/spice villa.jpg',
    'area': 'Vesu',
    'discount': 'FLAT 50% OFF',
  },
  {
    'name2': 'JackMex',
    'img2': 'assets/img/feature/jack.jpg',
    'area': 'Piplod',
    'discount': 'FLAT 40% OFF',
  }
];

List cravingsList = [
  {
    'img3': 'assets/img/food/samosa.png',
  },
  {
    'img3': 'assets/img/food/poha.png',
  },
  {
    'img3': 'assets/img/food/dhokla.png',
  },
  {
    'img3': 'assets/img/food/thepla.png',
  },
  {
    'img3': 'assets/img/food/vada.png',
  },
  {
    'img3': 'assets/img/food/coffie.jpg',
  },
  // {
  //   'img3': 'assets/img/food/biryani.jpg',
  // }
];

List imagelist = [
  {'foodName': 'Pizza', 'image': 'assets/img/food_images/pizza.jpeg'},
  {'foodName': 'Burger', 'image': 'assets/img/food_images/burger.jpeg'},
  {'foodName': 'Samosa', 'image': 'assets/img/food_images/samosa.jpeg'},
  {'foodName': 'Pavbhaji', 'image': 'assets/img/food_images/pavbhaji.jpeg'},
  {'foodName': 'Sandwich', 'image': 'assets/img/food_images/sandwich.png'},
  {'foodName': 'Poori', 'image': 'assets/img/food_images/poori.png'},
  {'foodName': 'Pasta', 'image': 'assets/img/food_images/pasta.jpeg'},
  {'foodName': 'Lassi', 'image': 'assets/img/food_images/lassi.png'},
  {'foodName': 'Dosa', 'image': 'assets/img/food_images/roll.png'},
];
List bannerList = [
  {'banner': 'assets/img/banner/banner1.png'},
  {'banner': 'assets/img/banner/banner2.png'},
  {'banner': 'assets/img/banner/banner7.png'},
  {'banner': 'assets/img/banner/banner4.png'},
  {'banner': 'assets/img/banner/banner6.png'},
  {'banner': 'assets/img/banner/banner3.png'},
  {'banner': 'assets/img/banner/banner5.png'},
];

PageController controller = PageController();

int value = 0;
bool ch = false;

int choice = 1;
final List<String> items = [
  'Sort by',
  'Relevance',
  'Distance:Nearby To Far',
  'Popularity:High to Low',
  'Cost for two:Low to High',
  'Cost for two:High to Low'
];
List<String> selectedItems = [];
List diamondList = [
  {
    'box': 'assets/img/diamond/1.png',
  },
  {
    'box': 'assets/img/diamond/2.png',
  },
  {
    'box': 'assets/img/diamond/3.png',
  },
  {
    'box': 'assets/img/diamond/4.png',
  },
  {
    'box': 'assets/img/diamond/5.png',
  },
  {
    'box': 'assets/img/diamond/6.png',
  },
  {
    'box': 'assets/img/diamond/7.png',
  },
];
