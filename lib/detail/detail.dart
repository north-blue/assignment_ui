


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internshipassignment_paymentlogproject/detail/employee.dart';
import 'package:internshipassignment_paymentlogproject/detail/lead_detail.dart';
import 'package:internshipassignment_paymentlogproject/home/tab_bar.dart';

import '../constant/constant.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ), 
        title: Padding(
          padding: const EdgeInsets.all(11.0),
          child: Text(
            'Lead - MV5747831RsHJ',
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: blueBarColor,
            ),
          ),
        ),
      ),
      body: Column(
    
        children: [
          const TabBarWidget(),
          const Divider(
              color: searchToolBarColor, thickness: 0.5, height: 0.0),
        
             const SizedBox(
            height: 10,
          ),


          Flexible(
            child: ListView(
               scrollDirection: Axis.vertical,
                shrinkWrap: true,
          
              children: const [
                   LeadDetail(),
                   SizedBox(
                    height: 10,
                  ),
                  EmployeeDetail(),
              ],
            
            ),
          ),
        
         // LeadDetail(),
        
          
        
         // EmployeeDetail(),
        ],
    
      )
    
    
    
    
    );
  }
}