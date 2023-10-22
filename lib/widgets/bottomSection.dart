import 'package:flutter/material.dart';

import 'colors.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      padding: const EdgeInsets.all(10),
      elevation: 200,
      color: Colors.white,
      
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
              child: Container(
              // padding: const EdgeInsets.all(20),
              height: 43,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                color: vert,
              ),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(width: 5,),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.insert_emoticon,color: Colors.white,size: 30,)),
                  const SizedBox(width: 10,),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border:InputBorder.none,
                        labelText: 'Message' ),
                      cursorColor: Colors.white,
                      
                    )
                  ),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.upload_outlined,color: Colors.white,size: 30,)),
                  const SizedBox(width: 10,),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.image,color: Colors.white,size: 30,)),
                  SizedBox(width: 10,)

                  // Container()
                ],     
              ),
            ),
          )
            
          ],
        ),
      ),
    );
  }
}