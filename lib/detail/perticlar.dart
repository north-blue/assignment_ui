import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/constant.dart';

class ParticularWidget extends StatelessWidget {
  final String title;
  final String info;
  const ParticularWidget({super.key, required this.title, required this.info});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Container(
          decoration: const BoxDecoration(
            color: backgroundColor,
          ),
          child: Row(
             //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.lato(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    color: titleDetailTextColor,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                //mainAxisAlignment: MainAxisAlignment.start,
                 //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      info,
                    textAlign: TextAlign.start,
                      style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 14,
                            fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                         // fontWeight: FontWeight.normal
                         ),
                    ),
                  ],
                ),
              ],
            ),
            //const SizedBox(width: 18),
          ]),
        ),
      ),
    );
  }
}
