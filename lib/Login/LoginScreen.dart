import 'package:attendease/Constants/AppColors.dart';
import 'package:attendease/Widgets/AppTitleBar.dart';
import 'package:attendease/Widgets/AppButton.dart';
import 'package:attendease/Widgets/AppTextField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
          child: Container(
            decoration:  const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  appBlueColor,
                  appBlueColor,
                  appPurpleColor
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight
              )
            ),
            child: ListView(
              shrinkWrap: true,
        children: [
            const AppTitleBar(
              pageTitle: 'Get Started',
            ),
            const SizedBox(height: 15),
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 60,
              child: Image.asset(
                "Assets/Images/employee.png",
                height: 50,
              ),
            ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
            child: Text(
              "Jobsly",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold,color: Colors.white),
            ),
          ),
          const SizedBox(height: 15),
            Expanded(
              child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(

                children: [
                    const SizedBox(height: 15),
                    const Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
                          child: Text(
                            "Welcome Back",
                            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "Login to continue using the app",
                            style: TextStyle(fontSize: 16, color: Colors.black54),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    const AppTextField(
                      hintText: "Enter your phone number",
                      label: "Phone",
                      isObscure: false,
                      textInputType: TextInputType.phone,
                    ),
                    const AppTextField(
                      hintText: "Enter your password",
                      label: "Password",
                      isObscure: true,
                      textInputType: TextInputType.visiblePassword,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "forgot password ?",
                            style: TextStyle(color: Colors.grey.shade600),
                          ),
                        ),
                      ],
                    ),
                    const AppButton(buttonText: "Login")
                ],
              ),
                  )),
            ),

        ],
      ),
          )),
    );
  }
}
