import 'package:flutter/material.dart';
import 'package:travel_app/widgets/post_app_bar.dart';
import 'package:travel_app/widgets/post_bottom_bar.dart';

class PostScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/City7.jpg'),
          fit: BoxFit.cover,
          opacity: 0.7,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.white54,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: HomeAppBar(),
        ),
        bottomNavigationBar: PostBottomBar(),
      ),

    );
  }
}