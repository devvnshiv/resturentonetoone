import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:crypt/crypt.dart';
import 'package:onetooneres/Ui/auth/Siginup.dart';
import 'package:onetooneres/Ui/auth/widgets/signdesign.dart';
import 'package:onetooneres/repository/Auth/Auth.dart';
import 'package:onetooneres/utils/colors.dart';
import 'package:onetooneres/utils/resposive.dart';


class LoginPage extends StatefulWidget {


  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String phone = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10*AppSizeConfig.heightMultiplier,),

               Sign_design(
                  Title: "Sign In",
                ),

            Center(
              child: Container(
                height: 12*AppSizeConfig.heightMultiplier,
                width: 85*AppSizeConfig.widthMultiplier,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: " 10 digit Mobile Number"

                  ),
                  onChanged: (value){
                    phone=value;

                  },

                ),

              ),

            ),

        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>SignUp()));
          },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                Text("Not Yet Registered?",style: GoogleFonts.roboto(fontWeight: FontWeight.bold,color:Colors.black54 ),),
                  Text("SignUp",style: GoogleFonts.roboto(fontWeight: FontWeight.bold,color:Colors.blue ),),
                  SizedBox(width: 6*AppSizeConfig.heightMultiplier,),
                ],
              ),
            ),
            SizedBox(height: 4*AppSizeConfig.heightMultiplier,),

            GestureDetector(
              onTap: () async{
             bool a = await  Authrepo().getdetailes(phone);
            print("result${a}");

              },
              child: Center(
                child: Container(height: 6*AppSizeConfig.heightMultiplier,
                width: 87*AppSizeConfig.widthMultiplier,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: maincolor
                  ),
                  child: Center(child: Text("Sign In",style: GoogleFonts.roboto(fontWeight: FontWeight.bold,color:secondarycolor ),)),
                ),
              ),
            )




          ],
        ),

      ),
    );
  }
}
