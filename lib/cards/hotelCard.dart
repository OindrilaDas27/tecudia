import 'package:flutter/material.dart';

class HotelsCard extends StatefulWidget {
  final String img;
  final String name;
  final String country;
  final String price;
  final String rating;

  const HotelsCard(
      {key,
      required this.img,
      required this.name,
      required this.country,
      required this.price,
      required this.rating})
      : super(key: key);

  @override
  State<HotelsCard> createState() => _HotelsCardState();
}

class _HotelsCardState extends State<HotelsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 150,
      margin: const EdgeInsets.fromLTRB(0, 8.0, 12.0, 8.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
            image: NetworkImage(widget.img),
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
                Colors.black38.withOpacity(0.3), BlendMode.darken),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.name,
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              const Icon(
                Icons.location_on_outlined,
                color: Colors.white,
              ),
              Text(
                widget.country,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                    text: widget.price,
                    style: const TextStyle(
                      fontWeight: FontWeight.w800,
                    ),
                    children: <TextSpan>[
                      const TextSpan(
                          text: 'night',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                          )),
                    ]),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    size: 16,
                    color: Colors.orangeAccent,
                  ),
                  Text(
                    widget.rating,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
