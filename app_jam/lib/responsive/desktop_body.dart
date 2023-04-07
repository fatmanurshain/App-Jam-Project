import 'package:flutter/material.dart';

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
       appBar: AppBar(title:Text('İ Ç E R İ K L E R')
      ),

      body: Column(
        children: [
          //youtube video
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AspectRatio(
              aspectRatio: 16/9,
              child: Container(
                color: Color.fromARGB(255, 0, 65, 97),
              ),
            ),
          ),

          //Yorum bölümleri ve önerilen video

          Expanded(
            child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
                return Padding(
                padding: const EdgeInsets.all(8.0),
                 child: Container(
                  height: 120,
                  color: Colors.red),
               );
              },
            ),
           ),
         ],
        ),
    );
  }
}