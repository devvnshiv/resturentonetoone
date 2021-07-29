import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onetooneres/Ui/auth/Login.dart';
import 'package:onetooneres/Ui/auth/widgets/signdesign.dart';
import 'package:onetooneres/repository/Auth/Auth.dart';
import 'package:onetooneres/utils/colors.dart';
import 'package:onetooneres/utils/resposive.dart';

class SignUp extends StatefulWidget {

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  Map<String,dynamic> params ={};
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
              Title: "Sign Up",
            ),

            Center(
              child: Container(
                height: 12*AppSizeConfig.heightMultiplier,
                width: 85*AppSizeConfig.widthMultiplier,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Restaurant Name"

                  ),
                  onChanged: (value){
                    params["restaurantname"]=value;

                  },

                ),
              ),

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
                    params["Phone"]=value;

                  },

                ),
              ),

            ),

            Center(
              child: Container(
                height: 12*AppSizeConfig.heightMultiplier,
                width: 85*AppSizeConfig.widthMultiplier,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: " Email Id"

                  ),
                  onChanged: (value){
                    params["Email"]=value;

                  },

                ),
              ),

            ),

            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginPage()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Already Registered?",style: GoogleFonts.roboto(fontWeight: FontWeight.bold,color:Colors.black54 ),),
                  Text("SignIn",style: GoogleFonts.roboto(fontWeight: FontWeight.bold,color:Colors.blue ),),
                  SizedBox(width: 6*AppSizeConfig.heightMultiplier,),
                ],
              ),
            ),
            SizedBox(height: 4*AppSizeConfig.heightMultiplier,),

            GestureDetector(
              onTap: ()async{
                bool check = await  Authrepo().addresturent(params);
                print("restult ${check}");
              },
              child: Center(
                child: Container(height: 6*AppSizeConfig.heightMultiplier,
                  width: 87*AppSizeConfig.widthMultiplier,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: maincolor
                  ),
                  child: Center(child: Text("Sign Up",style: GoogleFonts.roboto(fontWeight: FontWeight.bold,color:secondarycolor ),)),
                ),
              ),
            )




          ],
        ),

      ),
    );
  }
}

