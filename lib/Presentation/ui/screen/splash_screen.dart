import "package:e_commerce/Presentation/ui/screen/home.dart";
import "package:e_commerce/Presentation/ui/utility/image_assets.dart";
import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:get/get.dart";

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    SplashPagetoHomepage();
    // TODO: implement initState
    super.initState();
  }
  Future<void> SplashPagetoHomepage() async {
    await Future.delayed(const Duration(seconds: 2)); // Delay for 2 seconds
    Get.offAll( const HomeScreen());
    // Get.to(HomeScreen());
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Center(child: SvgPicture.asset(ImageAssets.craftyBayLogoSVG)),
          const Spacer(),

          const CircularProgressIndicator(),
          const SizedBox(height: 17,),
          const Text("Version 1.0.0"),
          const SizedBox(height: 7,),

        ],
      )
    );
  }
}
