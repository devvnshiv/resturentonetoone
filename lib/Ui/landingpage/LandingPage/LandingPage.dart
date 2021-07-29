import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onetooneres/Ui/landingpage/linegraphs.dart';
import 'package:onetooneres/Ui/landingpage/widgets/bottombar.dart';
import 'package:onetooneres/utils/colors.dart';


class LandingPage extends StatefulWidget {


  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  bool switc = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Bottombar(),
      backgroundColor: scafoldcolor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor:Colors.orange,
        title: Text("#Resto ",style: GoogleFonts.roboto(color: Colors.white70,fontWeight: FontWeight.bold),),
        actions: [
          Switch(value: switc ,
          activeColor: Colors.green,
            onChanged: (value){
            setState(() {
              switc =value;
            });

            },

            inactiveThumbColor: Colors.grey,
          )
        ],
      ),
        body:Chartdata()

    );
  }
}
