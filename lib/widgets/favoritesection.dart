import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class FavoriteSection extends StatelessWidget {
  FavoriteSection({super.key});

  final List favItem = [
    {"name": "Alla", "profil": "assets/images/avatars/a1.jpg"},
    {"name": "July", "profil": "assets/images/avatars/a2.jpg"},
    {"name": "Mike", "profil": "assets/images/avatars/a3.jpg"},
    {"name": "Kier", "profil": "assets/images/avatars/a4.jpg"},
    {"name": "Louren", "profil": "assets/images/avatars/a5.jpg"},
    {"name": "Ali", "profil": "assets/images/avatars/a6.jpg"},
    {"name": "Pierre", "profil": "assets/images/avatars/a7.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: noir
      ),
      child: Container(
          decoration: BoxDecoration(
              color: vert,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40))),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Favorite Contacts",
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ))
                  ],
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: favItem.map((item) {
                          return Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.white, width: 3)),
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage(
                                      item["profil"],
                                    ),
                                  ),
                                ),
                                Text(
                                  item["name"],
                                  style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                          );
                        }).toList()))
              ],
            ),
          )),
    );
  }
}
