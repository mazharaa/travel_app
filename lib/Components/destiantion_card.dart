import 'package:flutter/material.dart';

class DestinationCard extends StatelessWidget {
  const DestinationCard({
    super.key,
    required this.width,
    required this.imageLocation,
    required this.child,
    this.blur = false,
  });

  final double width;
  final String imageLocation;
  final Widget child;
  final bool blur;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      elevation: 20,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: SizedBox(
        width: width,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image(
              image: AssetImage(
                imageLocation,
              ),
              fit: BoxFit.cover,
            ),
            blur
                ? Opacity(
                    opacity: 0.5,
                    child: Container(color: Colors.grey),
                  )
                : const Opacity(opacity: 0),
            child
          ],
        ),
      ),
    );
  }
}
