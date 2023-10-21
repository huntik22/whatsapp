import 'package:flutter/material.dart';
import 'package:whatsapp/page1.dart';

import 'widgets/colors.dart';

class page2 extends StatelessWidget {
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: noir,
        leading: IconButton(onPressed: () {
           Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const page1(),
                  ),
                );
        }, icon: Icon(Icons.arrow_back_ios)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu))
        ],
      ),
    );
  }
}
