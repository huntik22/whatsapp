import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class MenuSection extends StatelessWidget {
  MenuSection({super.key});

  final List menuItems = ["Message", "Online", "Groups", "Calls"];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: noir,
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: menuItems.map((item) {
                return Container(
                  margin: EdgeInsets.only(right: 55),
                  child:Text(
                    item,
                    style: GoogleFonts.inter(
                      color: Colors.white60,
                      fontSize: 29,
                    )
                  ) 
                );
              }).toList()
            )
          )
      )
    );
  }            
}

