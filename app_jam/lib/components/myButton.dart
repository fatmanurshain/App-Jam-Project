import 'package:flutter/material.dart';

import '../responsive/mobile_body.dart';

class MyButton extends StatelessWidget {
 final Function()? onTap;
  const MyButton({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        
        padding:const EdgeInsets.all(25),
        margin:const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
        
        child: InkWell(
          child:Text(
          'Giriş Yap',
          style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyMobileBody()),
  );
},
        )
        ),
    );
  }
}