import "package:e_commerce/Presentation/ui/screen/email_page.dart";
import "package:e_commerce/Presentation/ui/screen/otp_verification_screen.dart";
import "package:e_commerce/Presentation/ui/screen/splash_screen.dart";
import "package:e_commerce/Presentation/ui/utility/color_pattern.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

class CraftyBay extends StatelessWidget {
  const CraftyBay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      // home: SplashScreen(),
      home:  SplashScreen(),
      theme: ThemeData(
        primarySwatch:Palette.primarySwatch,
        progressIndicatorTheme: ProgressIndicatorThemeData(color: Palette.primarySwatch),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            elevation:MaterialStatePropertyAll(10),
            shadowColor: MaterialStatePropertyAll(Palette.primarySwatch),
            shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(color: Palette.subText.withOpacity(0.6),),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Palette.primarySwatch),
              borderRadius: BorderRadius.circular(20),
            ),
        )
      )
      ,
    );
  }
}
