import 'package:e_commerce/Presentation/ui/screen/otp_verification_screen.dart';
import 'package:e_commerce/Presentation/ui/utility/color_pattern.dart';
import 'package:e_commerce/Presentation/ui/utility/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({Key? key}) : super(key: key);

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(ImageAssets.craftyBayLogoSVG,height: 120,),
                SizedBox(height: 12,),
                Text("Complete Profile", style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: 25,
                  fontWeight:  FontWeight.w700,
                ),),
                SizedBox(height: 7,),
                Text("Get started with us by share your details",style: TextStyle(color: Palette.subText),),

                SizedBox(height: 7,),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "First Name",
                  ),
                ),
                SizedBox(height: 12,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Last Name",
                  ),
                ),
                SizedBox(height: 12,),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Mobile",
                  ),
                ),
                SizedBox(height: 12,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "City",
                  ),
                ),
                SizedBox(height: 12,),
                TextFormField(
                  maxLines: 6,

                  decoration: InputDecoration(
                    hintText: "Shipping Address",

                  ),
                ),
                SizedBox(height: 12,),

                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to( OTPVarification());
                    },
                    child: Text("Complete"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


}
