import 'package:flutter/material.dart';
import 'package:onetooneres/utils/colors.dart';
import 'package:onetooneres/utils/resposive.dart';
class Bottombar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
     color: Bgwhite,

      elevation: 25,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(icon: Icon(Icons.home_outlined, color: Colors.black,), onPressed: null),
          SizedBox(width: 6*AppSizeConfig.widthMultiplier,),
          IconButton(icon: Icon(Icons.list_alt_outlined, color: Colors.black,), onPressed: null),
          SizedBox(width: 6*AppSizeConfig.widthMultiplier,),
          IconButton(icon: Icon(Icons.add_business_outlined, color: Colors.black,), onPressed: null),
          SizedBox(width: 6*AppSizeConfig.widthMultiplier,),
          IconButton(icon: Icon(Icons.ad_units_outlined, color: Colors.black,), onPressed: null),
          SizedBox(width: 6*AppSizeConfig.widthMultiplier,),
          IconButton(icon: Icon(Icons.account_circle_outlined, color: Colors.black,), onPressed: null),



        ],
      ),
    );
  }
}
