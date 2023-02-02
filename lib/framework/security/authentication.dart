import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iap/constants/app_colors.dart';
import 'package:iap/framework/security/create_user.dart';
import 'package:iap/layout.dart';
import 'package:iap/widgets/custom_text.dart';

import '../../constants/constants.dart';
import 'forget_password.dart';

class Authentication extends StatefulWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
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
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Login",
                          style: GoogleFonts.roboto(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange))
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
                  TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "password",
                          hintText: "@34543sdfdc%",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)))),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                              value: rememberMe,
                              onChanged: (value) {
                                setState(() {
                                  rememberMe = !rememberMe;
                                });
                              }),
                          const CustomTextOLD(
                            text: "Remember Me!",
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {Get.off(()=>ForgetPassWord());},
                        child: CustomTextOLD(
                          text: "Forgot password",
                          color: active,
                        ),
                      ),
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
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.green),
                      alignment: Alignment.center,
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: const CustomTextOLD(
                        text: "Login!",
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
                      Get.offAll(() => CreateUser());
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
                            CustomTextOLD(text: "Do not Have credentials?",color: Colors.white,size: 15,),
                            Container(
                                padding: EdgeInsets.symmetric(vertical: appPadding,horizontal: appPadding),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color:Colors.deepOrangeAccent
                                ),
                                child: const CustomTextOLD(
                              text: "Request!",
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
