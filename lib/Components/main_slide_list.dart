import 'package:flutter/material.dart';
import 'package:travel_app/Components/destiantion_card.dart';
import 'package:travel_app/Models/city.dart';

class MainSlideList extends StatelessWidget {
  const MainSlideList({super.key});

  @override
  Widget build(BuildContext context) {
    List<City> cities = [
      City(
        name: 'Prague',
        countryName: 'Czech Republic',
        image: 'assets/prague.jpg',
      ),
      City(
        name: 'London',
        countryName: 'United Kingdom',
        image: 'assets/london.jpg',
      ),
      City(
        name: 'New York',
        countryName: 'United States',
        image: 'assets/new_york.jpg',
      ),
    ];

    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.56,
      child: ListView.builder(
        padding: const EdgeInsets.only(bottom: 40),
        scrollDirection: Axis.horizontal,
        itemCount: cities.length,
        itemBuilder: (BuildContext context, int index) {
          return DestinationCard(
            width: size.width * 0.9,
            imageLocation: cities[index].image,
            child: Positioned(
              left: 20,
              bottom: 17,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cities[index].name,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    cities[index].countryName,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
