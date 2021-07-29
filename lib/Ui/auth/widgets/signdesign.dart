import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onetooneres/utils/resposive.dart';


class Sign_design extends StatelessWidget {
final String Title;

  const Sign_design({Key key, this.Title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     // color: Colors.black54,
height: 19*AppSizeConfig.heightMultiplier,
      width: 50*AppSizeConfig.widthMultiplier,

      padding: EdgeInsets.symmetric(
        vertical: 2*AppSizeConfig.heightMultiplier,
        horizontal: 4*AppSizeConfig.widthMultiplier

      ),
      child: Stack(
        children: [
          
          Positioned(
             top: 2*AppSizeConfig.widthMultiplier,
              child: Text(Title,style: GoogleFonts.roboto(fontSize: 45,fontWeight: FontWeight.bold,color:  Color(0xef11074C)),)),
          Positioned(
top: 9*AppSizeConfig.widthMultiplier,
              child: Image.asset("assets/signin.png",))
        ],
      ),

    );
  }
}
