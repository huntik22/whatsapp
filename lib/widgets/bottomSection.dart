import 'package:flutter/material.dart';

import 'colors.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white, 
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              child: Container(
              height: 45,
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
                        hintText: "Message"
                      ),
                      cursorColor: Colors.black,
                      
                    )
                  ),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.upload_outlined,color: Colors.white,size: 30,)),
                  const SizedBox(width: 5,),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.image,color: Colors.white,size: 30,)),
                  const SizedBox(width: 10,),              
                  ],     
                ),
              ),
            ),
         
            Container(
              margin: EdgeInsets.only(left: 10),
              height: 45,
              width: 50,
              // padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: vert,
              ),
              child: Center(
                child: IconButton(
                    onPressed: (){},
                    icon:const Icon(
                      Icons.mic_none_sharp,
                      color: Colors.white,)
                  ),
              ),
            )           
          ],
        ),
      ),
    );
  }
}