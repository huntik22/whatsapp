import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/colors.dart';

import 'widgets/favoritesection.dart';
import 'widgets/menusection.dart';
import 'widgets/messagesection.dart';

class page1 extends StatelessWidget {
  const page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: noir,
         leading: IconButton(
          onPressed: (){},
           icon: Icon(
            Icons.menu)),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search)),
         
        ],
      ),

      body: Column(
        children: [
          MenuSection(),
          FavoriteSection(),
          Expanded(child: MessageSection(),) 
        ],

      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: vert,
        hoverColor: Colors.red,
        focusColor: Colors.blue,
        onPressed: (){},
        child:IconButton(
          onPressed: (){}, 
          icon: Icon(Icons.edit, size: 20,)),
      ),
     
    );
  }
}