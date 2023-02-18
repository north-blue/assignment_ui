import 'package:flutter/material.dart';
import 'package:internshipassignment_paymentlogproject/constant/constant.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  List<String> categories = [
    "Leads",
    "Team Leads",
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 40,
        child: Center(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) => buildCategories(index),
          ),
        ),
      ),
    );
  }

  Widget buildCategories(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0), //to make it center the text
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
           // crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text(
                  categories[index],
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: selectedIndex == index
                        ? blueBarColor
                        : ifelseTextColor, //error here was because style was in constant
                  ),
                ),
              ),
              Container(
                //for the line under the text
                // ignore: prefer_const_constructors
                margin: EdgeInsets.only(
                 // bottom: 20,
                  
                    top: 20.0 / 4), //top padding is half of default padding
                height: 2,
                width: 90,
                color: selectedIndex == index ? Colors.black : Colors.transparent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
