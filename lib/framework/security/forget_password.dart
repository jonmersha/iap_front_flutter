import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'authentication.dart';
import 'package:iap/layout.dart';
import 'package:iap/widgets/custom_text.dart';

import '../../constants/constants.dart';

class ForgetPassWord extends StatefulWidget {
  const ForgetPassWord({Key? key}) : super(key: key);

  @override
  State<ForgetPassWord> createState() => _ForgetPassWordState();
}

class _ForgetPassWordState extends State<ForgetPassWord> {
  @override
  Widget build(BuildContext context) {
    bool rememberMe = false;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 500),
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          child: Image.asset(
                            "assets/icons/logo.png",
                            width: 100,
                          )),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomTextOLD(
                          text: "Welcome to IA",
                          color: Colors.deepPurple),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                      decoration: InputDecoration(
                          labelText: "Email",
                          hintText: "xyz@besheger.com",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)))),
                  SizedBox(
                    height: 15,
                  ),


                  InkWell(
                    onTap: () {
                      Get.offAll(() => SiteLayout());
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.red),
                      alignment: Alignment.center,
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: CustomTextOLD(
                        text: "Request!",
                        color: Colors.white,
                        forntWeight: FontWeight.normal,
                        size: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: (){
                      Get.offAll(() => Authentication());
                    },
                    child: Container(
                      padding: EdgeInsets.all(appPadding),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color:Colors.deepPurpleAccent
                      ),
                      // color: Colors.deepPurpleAccent,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomTextOLD(text: "Remember my password?",color: Colors.white,size: 15,),
                            Container(
                                padding: EdgeInsets.symmetric(vertical: appPadding,horizontal: appPadding),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color:Colors.deepOrangeAccent
                                ),
                                child: const CustomTextOLD(
                                  text: "Login!",
                                  color: Colors.white,
                                  size: 16,
                                  forntWeight: FontWeight.bold,
                                )),
                          ]),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
