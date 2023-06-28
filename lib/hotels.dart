import 'package:flutter/material.dart';
import 'package:tecudia/cards/hotelCard.dart';

class Hotels extends StatefulWidget {
  const Hotels({Key? key}) : super(key: key);

  @override
  State<Hotels> createState() => _HotelsState();
}

class _HotelsState extends State<Hotels> {

  List<HotelsCard> hotel = [
    const HotelsCard(img: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/81/30/3f/caption.jpg?w=1200&h=-1&s=1&cx=1846&cy=1833&chk=v1_6ae0a81ae3361e988707', name: 'Santorini', country: 'Greece', price: '\$488', rating: '4.9'),
    const HotelsCard(img: 'https://www.htophotels.com/content/imgsxml/panel_servicios/solarium-royalsun929.jpg', name: 'Hotel Royal', country: 'Spain', price: '\$280', rating: '4.5'),
    const HotelsCard(img: 'https://www.tourmag.com/photo/art/grande/9761256-15751720.jpg?v=1466497910', name: 'Le Royale Monceau', country: 'Paris', price: '\$658', rating: '4.9'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular Hotels',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                'See all',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.orange,
                ),
              )
            ],
          ),
          Container(
            height: 240.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true  ,
              children: hotel.map((individualHotelCard) => individualHotelCard).toList(),
            ),
          )
        ],
      ),
    );
  }
}
