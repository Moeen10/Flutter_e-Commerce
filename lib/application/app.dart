import "package:e_commerce/Presentation/ui/screen/splash_screen.dart";
import "package:e_commerce/Presentation/ui/utility/color_pattern.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

class CraftyBay extends StatelessWidget {
  const CraftyBay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      home: SplashScreen(),
      theme: ThemeData(
        primarySwatch:Palette.primarySwatch,
        progressIndicatorTheme: ProgressIndicatorThemeData(color: Palette.primarySwatch)
      )
      ,
    );
  }
}
