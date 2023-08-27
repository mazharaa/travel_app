import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Icon(
            Icons.menu,
            size: 35,
            color: Colors.blue,
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 45,
            child: const SearchBar(
              hintText: 'Search',
              hintStyle: MaterialStatePropertyAll(TextStyle(
                color: Color(0xFFa8a4a4),
              )),
              leading: Icon(
                Icons.search,
                color: Color(0xFFa8a4a4),
              ),
              elevation: MaterialStatePropertyAll(1),
              shadowColor: MaterialStatePropertyAll(Colors.transparent),
            ),
          ),
        )
      ],
    );
  }
}
