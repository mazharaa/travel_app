import 'package:flutter/material.dart';
import 'package:travel_app/Components/destiantion_card.dart';
import 'package:travel_app/Models/city.dart';

class RecomendationSlideList extends StatelessWidget {
  const RecomendationSlideList({super.key});

  @override
  Widget build(BuildContext context) {
    List<City> cities = [
      City(
        name: 'Grindelwald',
        countryName: 'Switzerland',
        image: 'assets/grindelwald.jpg',
      ),
      City(
        name: 'Hong Kong',
        countryName: 'China Republic',
        image: 'assets/hong_kong.jpg',
      ),
      City(
        name: 'Bangkok',
        countryName: 'Thailand',
        image: 'assets/bangkok.jpg',
      ),
    ];

    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.15,
      child: ListView.builder(
        padding: const EdgeInsets.only(bottom: 35),
        scrollDirection: Axis.horizontal,
        itemCount: cities.length,
        itemBuilder: (BuildContext context, int index) {
          return DestinationCard(
            width: size.width * 0.4,
            imageLocation: cities[index].image,
            blur: true,
            child: Center(
              child: Text(
                cities[index].name,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
