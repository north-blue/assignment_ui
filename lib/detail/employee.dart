import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internshipassignment_paymentlogproject/detail/perticlar.dart';

import '../constant/constant.dart';

class EmployeeDetail extends StatelessWidget {
  
  const EmployeeDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Material(
        elevation: 15,
        child: Container(
          // width: 345.0,
          height: 300.0,
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
                          
                              // width: 189,
                              height: 50,

                              width: 170,
                              decoration: const BoxDecoration(
                                color:blueBarColor,
                                borderRadius: BorderRadius.only(
                                    //topRight: Radius.circular(12),
                                      topLeft: Radius.circular(12)
                                     )
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(11.0),
                                child: Text(
                                  'Employee Details',
                                 // textAlign: TextAlign.start ,
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
                              icon: Icon(Icons.brush, color: Colors.white), onPressed: () {  },
                              //onPressed: () => Navigator.of(context).pop(),
                            ),
                          ),
                        
                        ],
                      ),
                    ),

                    //space
                    const SizedBox(height: 15),


                   

                    Row(
                      children:const [
                          ParticularWidget(title: "Employee Code ", info: "2132SAS "),
                          SizedBox(width: 42,),
                            ParticularWidget(title: "Employee Name", info: "Naveen"),

                      ],
                    ),

                    //2
                    const SizedBox(height: 15),

                   

                    Row(
                      children: [
                        ParticularWidget(title: " Reporting Manager", info: " Manager"),
                        const SizedBox(
                          width: 42,
                        ),
                        ParticularWidget(title: " Designation", info: "Developer"),
                      ],
                    ),

                    //3
                    const SizedBox(height: 15),

                    

                  

                     
                   
                    const SizedBox(height: 35),

                    Center(
                      child: Container(
                        width: 170,
                        decoration: const BoxDecoration(
                                color:blueBarColor,
                                 borderRadius: BorderRadius.only(
                                topRight: Radius.circular(12),
                                topLeft: Radius.circular(12))
                              ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                          IconButton(
                              icon: Icon(Icons.add_ic_call, color: Colors.white),
                              onPressed: () {},
                              //onPressed: () => Navigator.of(context).pop(),
                            ),
                            IconButton(
                              icon: Icon(Icons.email, color: Colors.white),
                              onPressed: () {},
                              //onPressed: () => Navigator.of(context).pop(),
                            ),
                            IconButton(
                              icon: Icon(Icons.email, color: Colors.white),
                              onPressed: () {},
                              //onPressed: () => Navigator.of(context).pop(),
                            ),


                         


                         ],
                        ),
                      ),
                    )

                   
                  
                  
                  
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
