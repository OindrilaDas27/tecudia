import 'package:flutter/material.dart';
import 'package:tecudia/hotelInfo.dart';
import 'package:tecudia/hotels.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pressed = -1;
  List<String> type = ['Hotel', 'Flight', 'Place', 'Food'];
  final List<IconData> _icons = [
    Icons.domain_outlined,
    Icons.flight_outlined,
    Icons.location_on_outlined,
    Icons.restaurant_outlined
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 20.0),
        child: Column(
          children: [
            Container(
              height: 100.0,
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Where you\nwanna go?',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                      height: 0.9,
                    ),
                  ),
                  FloatingActionButton.small(
                    onPressed: () {},
                    shape: const CircleBorder(),
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    child: const Icon(
                      Icons.search,
                      size: 30,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 145.0,
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: type.length,
                itemBuilder: (context, index) {
                  var _type = type[index];
                  var icons = _icons[index];

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        pressed = index;
                      });
                    },
                    child: Container(
                      width: 80.0,
                      margin: const EdgeInsets.fromLTRB(0, 0, 16.0, 20.0),
                      decoration: BoxDecoration(
                          color: pressed == index ? Colors.blue[300] : Colors.white,
                          border: Border.all(
                            width: 1.0,
                            color: pressed == index ? Colors.transparent : const Color.fromARGB(255, 213, 213, 213),
                          ),
                          borderRadius: BorderRadius.circular(18.0)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                              icons,
                            size: 36.0,
                            color: pressed == index ? Colors.white : const Color.fromARGB(255, 132, 132, 132),
                          ),
                          Text(
                              _type,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: pressed == index ? Colors.white : const Color.fromARGB(255, 132, 132, 132),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const Hotels(),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hot Deals',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HotelDetails(),
                        ),
                      );
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 0.9,
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                            image: const NetworkImage(
                                'https://2trip.vn/wp-content/uploads/2021/05/khach-san-gan-bien-bai-sau-vung-tau-1.jpg'
                            ),
                            fit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(Colors.white38.withOpacity(0.5), BlendMode.darken),
                          ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40,
                            child: FloatingActionButton.extended(
                              onPressed: () {},
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(35.0))
                              ),
                              label: const Text(
                                '25% OFF',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              backgroundColor: Colors.deepOrangeAccent,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'BaLi Motel Vung Tau',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        'Indonesia',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 16,
                                        color: Colors.orangeAccent,
                                      ),
                                      Text(
                                        '4.9',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                  RichText(
                                    text: const TextSpan(
                                        text: "\$580/",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: 'night',
                                              style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                              )
                                          ),
                                        ]
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
