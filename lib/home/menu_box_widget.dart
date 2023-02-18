



import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internshipassignment_paymentlogproject/constant/constant.dart';

class MenuWidget extends StatelessWidget {
   final IconData icon;
  final String text;
  const MenuWidget({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 120,
              height: 45,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: menuTextColor,
                borderRadius: BorderRadius.circular(20),
              ),

              child: Center(
                child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                        Text(
                      text,
                      style: GoogleFonts.poppins(
                         fontSize: 18,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          color: Colors.black
                      ),
                    ),
                    Icon(
                      icon,
                      color: Colors.black,
                    ),
                  ],
                    
                ),
              ),
              
   
            



            ),
          ),
        ],
      ),
    );
  }
}
