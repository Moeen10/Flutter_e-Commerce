import 'package:e_commerce/Presentation/ui/utility/color_pattern.dart';
import 'package:e_commerce/Presentation/ui/utility/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmailVarification extends StatefulWidget {
  const EmailVarification({Key? key}) : super(key: key);

  @override
  State<EmailVarification> createState() => _EmailVarificationState();
}

class _EmailVarificationState extends State<EmailVarification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(ImageAssets.craftyBayLogoSVG,height: 120,),
              SizedBox(height: 12,),
              Text("Welcome Back", style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontSize: 25,
                fontWeight:  FontWeight.w700,
              ),),
              SizedBox(height: 7,),
              Text("Please Enter Your E-mail Address",style: TextStyle(color: Palette.subText),),

              SizedBox(height: 7,),

              TextField(
                decoration: InputDecoration(
                  hintText: "Enter Your e-mail",
                  hintStyle: TextStyle(color: Palette.subText.withOpacity(0.6),),
                ),
              ),

              SizedBox(height: 10,),

              SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print("I am print button");
                  },
                  child: Text("Submit"),
                ),
              ),


              // Text("The code will expire in 120s",style: TextStyle(color: Palette.subText),),
              // Text("Resend Code",style: TextStyle(color: Palette.subText),),
            ],
          ),
        ),
      ),
    );
  }
}
