import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../categories/category.dart';

class Section extends StatelessWidget {
  final String sectionTitle;
  final List<Widget> sectionChild;

  Section({required this.sectionTitle, required this.sectionChild});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 35.0, right: 10),
                child: Text(
                  sectionTitle,
                  style: TextStyle(fontSize: 35),
                ),
              ),
              Icon(Icons.arrow_forward_ios)
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: sectionChild,
            ),
          )
        ],
      ),
    );
  }
}
