import 'package:daily_qoutes/widgets/ui/uihelper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 320),
              child: Image.asset(
                'assets/images/Rectangle 2.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 76),
              child: Column(
                children: [
                  UiHelper.customTextField(text: "Login", height: 28,fontWeight: FontWeight.bold,color: Color(0XFFFFFFFF)),
                  SizedBox(height: 30,),
                  UiHelper.customTextFieldContainer(hintText: "Email", controller: emailController),
                  SizedBox(height: 25,),
                  UiHelper.customTextFieldContainer(hintText: "password", controller:passwordController),
                  SizedBox(height: 40,),
                  UiHelper.customButton(callback: (){}, buttonName: "Login"),
                  SizedBox(height: 20,),
                  UiHelper.customTextField(text: "forgot your password?", height: 16,color: Color(0XFFFFFFFF)),
                  SizedBox(height: 80,),
                  UiHelper.customTextField(text: "OR", height: 18,color: Colors.black,fontWeight: FontWeight.bold),
                  SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      UiHelper.customTextField(text: "Don't have an account?", height: 16,color: Colors.black),
                      SizedBox(width: 10,),
                      Container(
                        // space between text and underline
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.blue,  // underline color
                              width: 2,           // underline thickness
                            ),
                          ),
                        ),
                        child: Text(
                          'Sing Up',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.blue,
                          ),
                        ),
                      )

                    ]
                  )



                ],
              ),
            )
          ),
        ],
      ),
    );

  }
}
