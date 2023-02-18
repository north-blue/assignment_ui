import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internshipassignment_paymentlogproject/detail/perticlar.dart';

import '../constant/constant.dart';

class LeadDetail extends StatelessWidget {
  
  const LeadDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Material(
        elevation: 15,
        child: Container(
          // width: 345.0,
          height: 400.0,
          // width: 35,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.all(const Radius.circular(10.0)),
            border: Border.all(
                color: backgroundColor, width: 1.0, style: BorderStyle.solid),
          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
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
                              height: 50,


                              width: 170,
                              decoration: const BoxDecoration(
                                color:blueBarColor,
                                 borderRadius: BorderRadius.only(
                                      //topRight: Radius.circular(12),
                                      topLeft: Radius.circular(12))
                              ),
                              child:  Padding(
                                padding: EdgeInsets.all(11.0),
                                child: Text(
                                  'Lead Details',
                                 style: GoogleFonts.lato(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    color: backgroundColor,
                                  ),




                                ),
                              ),
                            ),
                          ),
                          Container(
                              height: 50,
                             
                                decoration: const BoxDecoration(
                              color: blueBarColor,
                               borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12),
                                    //topLeft: Radius.circular(12)
                                    )
                            ),
                            child: IconButton(
                              icon: Icon(Icons.edit, color: Colors.white), onPressed: () {  },
                              //onPressed: () => Navigator.of(context).pop(),
                            ),
                          ),
                        
                        ],
                      ),
                    ),

                    //space
                    const SizedBox(height: 15),


                 

                    Row(
                      children: [
                          ParticularWidget(title: "Lead Name", info: "Test"),
                           const SizedBox(width: 42,),
                            ParticularWidget(title: "Mobile Number ", info: "999888777"),

                      ],
                    ),

                    //2
                    const SizedBox(height: 15),

                  
                    Row(
                      children: [
                        ParticularWidget(title: " Service Type", info: " Personal Loan"),
                        const SizedBox(
                          width: 42,
                        ),
                        ParticularWidget(title: " Salary", info: "₹45000.0 "),
                      ],
                    ),

                    //3
                    const SizedBox(height: 15),

                   

                    Row(
                      children: [
                        ParticularWidget(title: " Designation", info: "Developer "),
                        const SizedBox(
                          width: 42,
                        ),
                        ParticularWidget(title: "Obligations", info: "₹68900.0"),
                      ],
                    ),

                    //4
                    const SizedBox(height: 15),


                    Row(
                      children: [
                        ParticularWidget(title: "Address", info: "Hyd"),
                        const SizedBox(
                          width: 42,
                        ),
                        ParticularWidget(title: "Follow Up", info: "18 sep 2021"),
                      ],
                    ),

                 

                     
                   
                    const SizedBox(height: 25),

                   
                  
                  
                  
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
