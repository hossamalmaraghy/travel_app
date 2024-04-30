import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneFieldScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Field'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              
            children: [
             SizedBox(height: 10),
             TextField(
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(borderSide: BorderSide(),
                ),
              ),
             ),
             
             SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(borderSide: BorderSide(),
                ),
              ),
             ),
              
              SizedBox(height: 10,
                child: IntlPhoneField(                
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  initialCountryCode: 'SA',
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                ),              
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  // Add your logic here when the button is pressed
                },
                child: Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text('Submit', 
                style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold, 
                color: Colors.white,                
                ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
