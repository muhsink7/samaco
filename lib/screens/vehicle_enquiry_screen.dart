import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

class VehicleEnquiry extends StatefulWidget {
  static String id = 'vehicle_enquiry_screen';
  const VehicleEnquiry({Key? key}) : super(key: key);

  @override
  State<VehicleEnquiry> createState() => _VehicleEnquiryState();
}

class _VehicleEnquiryState extends State<VehicleEnquiry> {

  List imageList = [
  {"id" : 1, "image" : "assets/images/slide/image1.jpg"},
  {"id" : 2, "image" : "assets/images/slide/image2.jpg"},
  {"id" : 3, "image" : "assets/images/slide/image3.jpg"},
  {"id" : 4, "image" : "assets/images/slide/image4.jpg"},
  {"id" : 5, "image" : "assets/images/slide/image5.jpg"},
  {"id" : 6, "image" : "assets/images/slide/image6.jpg"},
  ];

  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 40,
                          child: Column(
                            children: [
                              Icon(
                                Icons.person,
                                size: 26,
                              ),
                              Text(
                                'Profile',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                            height: 40,
                            child: Image(
                                image: AssetImage('assets/images/samacologo.png'))),
                        SizedBox(
                            height: 30,
                            child: SvgPicture.asset(
                              'assets/images/icons/align-justify.svg',
                              fit: BoxFit.cover,
                            )),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        InkWell(
                          onTap: () {
                            carouselController.nextPage();
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: CarouselSlider(
                              carouselController: carouselController,
                              options: CarouselOptions(
                                height: 200,
                                autoPlay: true,
                                autoPlayInterval: const Duration(seconds: 3),
                                autoPlayAnimationDuration:
                                    const Duration(milliseconds: 800),
                                autoPlayCurve: Curves.fastOutSlowIn,
                                pauseAutoPlayOnTouch: true,
                                aspectRatio: 2.0,
                                enlargeCenterPage: true,
                                scrollDirection: Axis.horizontal,
                                viewportFraction: 1,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    currentIndex = index;
                                  });
                                },
                              ),
                              items: imageList
                                  .map((item) => Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                    image: AssetImage(item['image']),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                        // child: Expanded(
                                        //   child: Image.asset(
                                        //     item['image'],
                                        //     fit: BoxFit.cover,
                                        //     width: 1000,
                                        //   ),
                                        // ),
                                      ))
                                  .toList(),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: imageList.asMap().entries.map((entry) {
                              // print(entry);
                              // print(entry.key);
                              // int index = imageList.indexOf(url);
                              return GestureDetector(
                                onTap: () {
                                  carouselController.animateToPage(entry.key);
                                },
                                child: Container(
                                  width: currentIndex == entry.key ? 22.0 : 8.0,
                                  height: 9.0,
                                  margin: const EdgeInsets.symmetric(
                                       horizontal: 3.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: currentIndex == entry.key
                                        ? Colors.blueGrey[900]
                                        : Colors.blueGrey,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 10,),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(child: Text('Hello Guest',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )
                  )),
                ),
                // SizedBox(
                //   height: 10,),
                Expanded(
                    child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,

                    childAspectRatio: 1.5,
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  const Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 60,
                              width: 90,
                              child: Image.asset(
                                'assets/images/icons/newcar.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'Buy a Car',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  const Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 50,
                              child: Image.asset(
                                'assets/images/icons/carservice.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'Vehicle Services',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  const Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 50,
                              child: Image.asset(
                                'assets/images/icons/asktechnician.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'Ask a Technician',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  const Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 50,
                              child: Image.asset(
                                'assets/images/icons/bookservice.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'Book a Service',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  const Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 50,
                              child: Image.asset(
                                'assets/images/icons/testdrive.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'Test Drive',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
              ]),
            ),
          )),
    );
  }
}
