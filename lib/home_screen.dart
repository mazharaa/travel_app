import 'package:flutter/material.dart';
import 'package:travel_app/Components/header.dart';
import 'package:travel_app/Components/main_slide_list.dart';
import 'package:travel_app/Components/recomendation_slide_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: size.height * 0.025),
              const Header(),
              SizedBox(height: size.height * 0.020),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Where do you want to travel?',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                    color: const Color(0xFF3C5055),
                    height: size.height * 0.0013,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.020),
              const MainSlideList(),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Recomendations for you',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF3C5055),
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.020),
              const RecomendationSlideList()
            ],
          ),
        ),
      ),
    );
  }
}
