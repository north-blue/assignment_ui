import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internshipassignment_paymentlogproject/home/menu_box_widget.dart';
import 'package:internshipassignment_paymentlogproject/home/tab_bar.dart';
import 'package:internshipassignment_paymentlogproject/widgets/loan_title.dart';

import '../constant/constant.dart';
import '../detail/detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List people = [
    [' Personal Loan', DetailPage()],
    ['Business Loan', DetailPage()],
    ['Property Loan', DetailPage()],
    ['Vehicle Loan', DetailPage()]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              'Welcome to M3',
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                fontSize: 17,
                fontWeight: FontWeight.w900,
                color: blueBarColor,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const TabBarWidget(),
          const Divider(color: searchToolBarColor, thickness: 0.5, height: 0.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              MenuWidget(icon: Icons.arrow_drop_down, text: "Sort By"),
              MenuWidget(icon: Icons.arrow_drop_down, text: "Filter By"),
              MenuWidget(icon: Icons.search, text: "Search "),
            ],
          ),
          const Divider(color: searchToolBarColor, thickness: 0.5, height: 0.0),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: people.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                    child: LoanTitleWidget(loanname: people[index][0]),

                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => people[index][1]))

                 
                    
                    
                    
                    
                    );
                
              },
            ),
          ),
        ],
      ),
    );
  }
}
