import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class categorybuilder extends StatelessWidget {
  const categorybuilder({
    super.key,
     required this.name,
      required this.image, this.ongridtap, 
  });
final String name;
final String image;
final void Function()? ongridtap;
  @override
  Widget build(BuildContext context) {
  //  var index;
    return Stack(
      fit: StackFit.expand,
      children: [
        InkWell(
          onTap: ongridtap ,
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              
              color: Colors.grey.shade800,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
              name,
                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 40,
          left: 50,
          child: SvgPicture.asset(
          image,
            height: 150, // height 
            width: 150,  // width 
          ),
        ),
      ],
    );
  }
}
