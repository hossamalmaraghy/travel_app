import 'package:flutter/material.dart';
import 'package:travel_app/screens/post_screen.dart';
import 'package:travel_app/widgets/home_app_bar.dart';
import 'package:travel_app/widgets/home_bottom_bar.dart';

class HomeScreen extends StatelessWidget {
  static const List<String> cat = [
    'Best Places',
    'Most Visited',
    'Favourites',
    'New Added',
    'Hotels',
    'Restaurants',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.0),
        child: HomeAppBar(),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200,
              child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                              builder: (context) => PostScreen(),
                              ));
                    },
                    child: Stack(
                      children: [
                        Container(
                          width: 160,
                          padding: EdgeInsets.all(20),
                          margin: EdgeInsets.only(left: 15),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(
                                  'android/assets/images/City${index + 1}.jpg'),
                              fit: BoxFit.cover,
                              opacity: 0.7,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 5,
                          right: 5,
                          child: Icon(
                            Icons.bookmark_border_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        Positioned(
                          bottom: 5,
                          left: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 8, // Adjust horizontal padding
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.0),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                'City Name',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20), // Add spacing between the rows
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    for (int i = 0; i < 6; i++)
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        child: Text(
                          cat[i], // Use the cat list to display category names
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    // Add more boxes here
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: 6, // Adjust the itemCount as needed
                physics: ClampingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => PostScreen(),
                              ));
                          },
                          child: Container(
                            height: 200,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(
                                    'android/assets/images/City${index + 1}.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.7),
                                  BlendMode.dstATop,
                                ),
                              ),
                            ),
                           
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('City Name', style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,                                
                              ),
                              ),
                             Icon(Icons.more_vert, size: 30),                             
                            ]
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Icon(Icons.star, 
                              color: Colors.amber,
                              size: 20,                              
                              ),
                              Text('4.5', style: TextStyle(
                              fontWeight: FontWeight.w500,
                              ),
                              ),
                            ],
                            )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}
