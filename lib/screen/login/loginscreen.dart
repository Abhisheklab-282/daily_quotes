import 'package:daily_qoutes/data/auth/auth.dart';
import 'package:daily_qoutes/screen/onboarding/onboardingscreen.dart';
import 'package:daily_qoutes/screen/quote/quotes screen.dart';
import 'package:daily_qoutes/screen/signup/signupscreen.dart';
import 'package:daily_qoutes/widgets/ui/uihelper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final Auth _auth = Auth();
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
                  UiHelper.customTextFieldContainer(labelText: "Email", controller: emailController),
                  SizedBox(height: 25,),
                  UiHelper.customTextFieldContainer(labelText: "Password", controller:passwordController),
                  SizedBox(height: 40,),
                  UiHelper.customButton(callback: _logIn, buttonName: "Login"),
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
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                          },
                          child: Text(
                            'Sing Up',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
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
  _logIn() async{
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    User? user = await _auth.logInWithEmailAndPassword(email, password);
    if(user != null ){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>OnBoardingScreen()));
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Sign Up Failed!")),
      );
    }

  }

}
