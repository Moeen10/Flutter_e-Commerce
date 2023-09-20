import "package:e_commerce/Presentation/ui/screen/email_page.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HOME")),
      body: Center(
        child: ElevatedButton(onPressed: () => Get.to(EmailVarification()), child: Text("e-mail Varification"),),
      ),
    );
  }
}
