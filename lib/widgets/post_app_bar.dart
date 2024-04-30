import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15), // Move this line here
                ),
                child: Icon(
                  Icons.sort_rounded,
                  size: 28,
                ),
              ),
            ),
             Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Color(0xFFF65959),
                ),
                Text(
                  'Al-Riyadh, SA',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(
                  Icons.search,
                  size: 28,
                ),
              ),
            ),
            // You can add more widgets here
          ],
        ),
      ),
    );
  }
}
