// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/constant.dart';

class LoanTitleWidget extends StatelessWidget {
  final String loanname;
  LoanTitleWidget({super.key, required this.loanname});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Positioned(
        left: 15.0,
        top: 142.0,
        child: Material(
          elevation: 15,
          child: Container(
            
            height: 160.0,
        
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.all(const Radius.circular(10.0)),
              border: Border.all(
                  color: backgroundColor, width: 1.0, style: BorderStyle.solid),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                
                Container(
                  height: 160.0,
                  width: 35,
                  decoration: const BoxDecoration(
                      color: greenColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomLeft: Radius.circular(12))),
                  child: RotatedBox(
                      quarterTurns: 3,
                      child: Center(
                          child: Text(loanname,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)))),
                ),

                //name and number

                Expanded(
                  child: Column(
                    children: [
                      Material(
                        elevation: 12,
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                // width: double.infinity,

                                decoration: const BoxDecoration(
                                  color: backgroundColor,
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Center(
                                      child: Text(
                                    'Prasad Kumar',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                // width: 200,
                                decoration: const BoxDecoration(
                                    color: blueBarColor,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(12),
                                        bottomLeft: Radius.circular(12))),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Center(
                                      child: Text(
                                    'M3AM30025567',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //space
                      const SizedBox(height: 15),
                     

//name
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Container(
                              decoration: const BoxDecoration(
                                color:backgroundColor,
                              ),
                              child: Row(children: [
                                Column(
                                 // mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children:  [
                                    Text(
                                      'Deal Amount',
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w500,
                                        color: titleDetailTextColor,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      '10,29,00,000',
                                      style:  GoogleFonts.poppins(
                                        fontSize: 18,
                                         fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 10),
                                Column(
                                   crossAxisAlignment: CrossAxisAlignment.end,
                                  children:  [
                                    Text(
                                      'Income',
                                      style:  GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w500,
                                        color: titleDetailTextColor,
                                      ),



                                    ),
                                    SizedBox(
                                      height:3,
                                    ),
                                    Text(
                                      '45,000',
                                      style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),



                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                  children:  [
                                    Text(
                                      'Pincode',
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w500,
                                        color: titleDetailTextColor,
                                      ),
                                    ),



                                    SizedBox(
                                      height:3,
                                    ),



                                         Text(
                                      '506003',
                                      style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    ),




                                  ],
                                ),
                              ]),
                            ),
                          ),
                        ],
                      ),

                     

                    
                      SizedBox(
                        height: 5,
                      ),

                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                              icon: Icon(Icons.add_ic_call, color: titleDetailTextColor,size: 20,),
                              onPressed: () {},
                              //onPressed: () => Navigator.of(context).pop(),
                            ),
                        
                            IconButton(
                              icon: Icon(Icons.article, color:titleDetailTextColor,
                                size: 30,
                              ),
                              onPressed: () {},
                              //onPressed: () => Navigator.of(context).pop(),
                            ),


                             Text(
                              'Lead status',
                              style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500,
                                  color: titleDetailTextColor),
                            ),
                              SizedBox(
                              width: 10,
                            ),
                               Text(
                              'Docs Pending ',
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
