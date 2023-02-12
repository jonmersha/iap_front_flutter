import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iap/constants/app_colors.dart';
import 'package:iap/constants/constants.dart';

import '../../layout.dart';
import '../../widgets/custom_text.dart';
import 'authentication.dart';

class CreateUser extends StatefulWidget {
  const CreateUser({Key? key}) : super(key: key);

  @override
  State<CreateUser> createState() => _CreateUserState();
}

class _CreateUserState extends State<CreateUser> {
  @override
  Widget build(BuildContext context) {
    bool rememberMe = false;
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: bgColor,
        body: Center(

          child: Container(
            constraints: BoxConstraints(maxWidth: 500),
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          child: Image.asset(
                            "assets/icons/logo.png",
                            width: 70,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomTextOLD(
                          text: "Welcome to IA",
                          color: Colors.deepPurple,size: 20,),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                      decoration: InputDecoration(
                          labelText: "Full Name",
                          hintText: "Disribsa Belay Kumsa",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(radius)))),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                      decoration: InputDecoration(
                          labelText: "Email",
                          hintText: "xyz@besheger.com",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(radius)))),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                      decoration: InputDecoration(
                          labelText: "Department/Unit",
                          hintText: "Internal Audit",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(radius)))),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                      decoration: InputDecoration(
                          labelText: "Mobile Number",
                          hintText: "+251-91-11-53125",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(radius)))),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "password",
                          hintText: "@34543sdfdc%",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(radius)))),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [


                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {
                      Get.offAll(() => SiteLayout());
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(radius),
                          color: Colors.green),
                      alignment: Alignment.center,
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: CustomTextOLD(
                        text: "Create",
                        color: Colors.white,
                        forntWeight: FontWeight.normal,
                        size: 25,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    onTap: (){
                      Get.offAll(() => Authentication());
                    },
                    child: Container(
                      //height: 90,
                      padding: EdgeInsets.all(appPadding),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(radius),
                        color:Colors.deepOrangeAccent
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomTextOLD(text: "Have credentials?",color: Colors.white,size: 20,),
                            Container(
                                padding: EdgeInsets.all(appPadding/2),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(radius),
                                  color:Colors.deepPurpleAccent
                              ),
                                child: const CustomTextOLD(
                                  text: "Login!",
                                  color: Colors.white,
                                  size: 20,
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
