import 'package:flutter/material.dart';
import 'package:travel_app/screens/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints
            .expand(), // Set container constraints to expand
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/City7.jpg'),
            fit: BoxFit.cover, // Set fit to BoxFit.cover
          ),
        ),
        child: Material(
          color: Color.fromARGB(207, 9, 8, 8),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                   EdgeInsets.symmetric(vertical: 65, horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Text(
                      'Enjoy',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                      ),
                    ),
                     SizedBox(height: 2),
                     Text(
                      'The World!',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 0.9),
                        fontSize: 35,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.5,
                      ),
                    ),
                     SizedBox(height: 12),
                     Text(
                      'Scientists have proven that travelling is good for both your body and your mind! Perhaps this is why we love it.',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 0.9),
                        fontSize: 16,
                        letterSpacing: 1.2,
                      ),
                    ),
                    SizedBox(height: 30),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    ),                    
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
