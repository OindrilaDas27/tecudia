import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HotelDetails extends StatefulWidget {
  const HotelDetails({Key? key}) : super(key: key);

  @override
  State<HotelDetails> createState() => _HotelDetailsState();
}

class _HotelDetailsState extends State<HotelDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(
              image: NetworkImage(
                  'https://2trip.vn/wp-content/uploads/2021/05/khach-san-gan-bien-bai-sau-vung-tau-1.jpg'),
              fit: BoxFit.contain,
              alignment: Alignment.topCenter,
              colorFilter: new ColorFilter.mode(
                  Colors.white38.withOpacity(0.5), BlendMode.darken),
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 36.0, horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FloatingActionButton.small(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    shape: CircleBorder(),
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    child: Icon(
                      Icons.arrow_back,
                      size: 20,
                    ),
                  ),
                  Row(
                    children: [
                      FloatingActionButton.small(
                        onPressed: () {},
                        shape: CircleBorder(),
                        backgroundColor: Color.fromARGB(255, 255, 255, 255),
                        child: Icon(
                          Icons.share_outlined,
                          size: 20,
                        ),
                      ),
                      FloatingActionButton.small(
                        onPressed: () {},
                        shape: CircleBorder(),
                        backgroundColor: Color.fromARGB(255, 255, 255, 255),
                        child: Icon(
                          CupertinoIcons.heart,
                          size: 20,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 36,
                  width: 90,
                  margin: EdgeInsets.symmetric(vertical: 12.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(173, 97, 97, 97),
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  child: Text(
                    '124 photos',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.73,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.fromLTRB(24.0, 32.0, 24.0, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(36.0),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'BaLi Motel\nVung Tau',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.grey,
                            ),
                            Text(
                              'Indonesia',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color.fromARGB(255, 123, 123, 123),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 16,
                                  color: Colors.orangeAccent,
                                ),
                                RichText(
                                  text: TextSpan(
                                      text: '4.9',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        color: Color.fromARGB(255, 75, 75, 75),
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: '(6.8K review)',
                                            style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              color: Color.fromARGB(
                                                  255, 160, 160, 160),
                                            )),
                                      ]),
                                ),
                              ],
                            ),
                            RichText(
                              text: TextSpan(
                                  text: '\$580/',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'night',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                          color: Color.fromARGB(
                                              255, 123, 123, 123),
                                        )),
                                  ]),
                            ),
                          ],
                        ),
                        Divider(
                          height: 64.0,
                        ),
                        RichText(
                          text: TextSpan(
                              text:
                                  'Set in Vung Tau, 100 meters from Front Beach, BaLi Motel Vung Tau offers accomodation with a garden, private parking and a shared...',
                              style: TextStyle(
                                height: 1.4,
                                fontSize: 15.0,
                                fontWeight: FontWeight.normal,
                                color: Color.fromARGB(255, 75, 75, 75),
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Read more',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.orangeAccent,
                                    )),
                              ]),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 24.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'What we offer',
                                style: TextStyle(
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Container(
                                height: 130,
                                width: MediaQuery.of(context).size.width,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Container(
                                      width: 80.0,
                                      height: 100.0,
                                      margin: EdgeInsets.fromLTRB(
                                          0, 18.0, 12.0, 12.0),
                                      decoration: BoxDecoration(
                                          // color: Color.fromARGB(255, 255, 255, 255),
                                          border: Border.all(
                                            width: 1.0,
                                            color: Color.fromARGB(
                                                255, 213, 213, 213),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(18.0)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            CupertinoIcons.bed_double,
                                            size: 36.0,
                                            color: Color.fromARGB(
                                                255, 132, 132, 132),
                                          ),
                                          Text(
                                            '2 Bed',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 132, 132, 132),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 80.0,
                                      height: 100.0,
                                      margin: EdgeInsets.fromLTRB(
                                          0, 18.0, 12.0, 12.0),
                                      decoration: BoxDecoration(
                                          // color: Color.fromARGB(255, 255, 255, 255),
                                          border: Border.all(
                                            width: 1.0,
                                            color: Color.fromARGB(
                                                255, 213, 213, 213),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(18.0)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.restaurant_outlined,
                                            size: 36.0,
                                            color: Color.fromARGB(
                                                255, 132, 132, 132),
                                          ),
                                          Text(
                                            'Dinner',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 132, 132, 132),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 80.0,
                                      height: 100.0,
                                      margin: EdgeInsets.fromLTRB(
                                          0, 18.0, 12.0, 12.0),
                                      decoration: BoxDecoration(
                                          // color: Color.fromARGB(255, 255, 255, 255),
                                          border: Border.all(
                                            width: 1.0,
                                            color: Color.fromARGB(
                                                255, 213, 213, 213),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(18.0)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.bathtub_outlined,
                                            size: 36.0,
                                            color: Color.fromARGB(
                                                255, 132, 132, 132),
                                          ),
                                          Text(
                                            'Hot Tub',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 132, 132, 132),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 80.0,
                                      height: 100.0,
                                      margin: EdgeInsets.fromLTRB(
                                          0, 18.0, 12.0, 12.0),
                                      decoration: BoxDecoration(
                                          // color: Color.fromARGB(255, 255, 255, 255),
                                          border: Border.all(
                                            width: 1.0,
                                            color: Color.fromARGB(
                                                255, 213, 213, 213),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(18.0)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.ac_unit,
                                            size: 36.0,
                                            color: Color.fromARGB(
                                                255, 132, 132, 132),
                                          ),
                                          Text(
                                            '1 AC',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 132, 132, 132),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Text(
                          'Hosted by',
                          style: TextStyle(
                            fontSize: 28.0,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  margin: EdgeInsets.fromLTRB(0, 12.0, 12.0, 12.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          'https://img.freepik.com/premium-photo/portrait-beautiful-asian-woman-smiling-looking-camera-outdoors-student-campus-dur_68060-1758.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Harleen Smith',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              size: 16,
                                              color: Colors.orangeAccent,
                                            ),
                                            RichText(
                                              text: TextSpan(
                                                  text: '4.9',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w800,
                                                    color: Color.fromARGB(255, 75, 75, 75),
                                                  ),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                        text: '(6.8K review)',
                                                        style: TextStyle(
                                                          fontWeight: FontWeight.normal,
                                                          color: Color.fromARGB(
                                                              255, 160, 160, 160),
                                                        )),
                                                  ]),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16.0),
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Colors.amber,
                                      Colors.deepOrangeAccent,
                                    ],
                                  )
                              ),
                              child: Icon(
                                CupertinoIcons.chat_bubble_text,
                                size: 34,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        Container(
                            height: 70,
                            width: MediaQuery.of(context).size.width * 0.9,
                            margin: EdgeInsets.symmetric(vertical: 24.0),
                            decoration: BoxDecoration(
                              color: Colors.blue[300],
                              borderRadius: BorderRadius.circular(26.0),
                            ),
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Book Now', 
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    ),
                                )
                            ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
