import 'package:flutter/material.dart';
import 'package:grocery_market/components/reusable_card.dart';

class SuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('images/success.png'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Thanks for your order!',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'The order is being packed for shipping.',
                style: TextStyle(fontSize: 20, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 120,
              ),
              ReusableCard(
                  cardHeight: 80,
                  backgroundColorCard: Color.fromRGBO(30, 42, 73, 1),
                  cardChild: Center(
                    child: Text(
                      'Back To Home',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
