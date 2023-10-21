import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';
import '../page2.dart';

class MessageSection extends StatelessWidget {
  MessageSection({super.key});

  final List dialogue = [
    {
      "profil": "assets/images/avatars/a1.jpg",
      "name": "Alla",
      "message": "Bonjour tout le monde",
      "heure": "16:35",
      "unread": 1
    },
    {
      "profil": "assets/images/avatars/a2.jpg",
      "name": "Pierre",
      "message": "Bonsoir tout le monde",
      "heure": "18:24",
      "unread": 2
    },
    {
      "profil": "assets/images/avatars/a3.jpg",
      "name": "Jean",
      "message": "Bonjour tout le monde",
      "heure": "20:03",
      "unread": 3
    },
    {
      "profil": "assets/images/avatars/a4.jpg",
      "name": "Hervé",
      "message": "Bonsoir tout le monde",
      "heure": "05:45",
      "unread": 4
    },
    {
      "profil": "assets/images/avatars/a5.jpg",
      "name": "Serge",
      "message": "Bonjour tout le monde",
      "heure": "12:32",
      "unread": 5
    },
    {
      "profil": "assets/images/avatars/a6.jpg",
      "name": "Isidore",
      "message": "Bonsoir tout le monde",
      "heure": "01:23",
      "unread": 6
    },
    {
      "profil": "assets/images/avatars/a7.jpg",
      "name": "Alain",
      "message": "Bonjour tout le monde",
      "heure": "08:34",
      "unread": 7
    },
    {
      "profil": "assets/images/avatars/a1.jpg",
      "name": "Alla",
      "message": "Bonjour tout le monde",
      "heure": "16:35",
      "unread": 1
    },
    {
      "profil": "assets/images/avatars/a5.jpg",
      "name": "Serge",
      "message": "Bonjour tout le monde",
      "heure": "12:32",
      "unread": 5
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: dialogue.map((item) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const page2(),
                ),
              );
            },
            splashColor: vert,
            child: Container(
              padding: const EdgeInsets.only(top: 10, left: 10),
              margin: EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 3)),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(
                        item["profil"],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item["name"],
                        style: GoogleFonts.inter(
                          color: Colors.grey,
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        item["message"],
                        style: GoogleFonts.inter(
                          color: noir,
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 180,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        item["heure"],
                        style: GoogleFonts.inter(
                          color: noir,
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      item["unread"]!=0 
                      ? Container(    
                        padding: EdgeInsets.all(5),             
                        decoration: BoxDecoration(
                          color: vert,
                          shape:  BoxShape.circle
                        ),
                        child: Center(
                          child: Text(
                          item["unread"].toString(),
                          style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                  ),
                          ),

                        ) 
                      ):Container()
                    ],
                  ),                        
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
