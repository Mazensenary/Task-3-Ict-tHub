import 'package:flutter/material.dart';
import 'package:test_1/Widgets/custom_elevated_button.dart';
import '../Widgets/custom_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController? mailcontroller = TextEditingController();
  TextEditingController? passcontroller = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isVis=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child:Container(
            width: 80,
              height: 110,
            color:Colors.black,
            child:Column(
                children: [Image.asset(
                  'assets/porsched.jpg',
                  height: 120,
                  width: 100,
            )
  ]
          )
          ),
        ),
      ),
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "LOG IN",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            CustomTextFormField(
              controller: mailcontroller,
              validator: (value) {
                if (value!.isEmpty) {
                  return "please enter email";
                }
                return null;
              },
              hintText: "Enter Your Email",
              Prefixicon:Icon(Icons.mail),
              obscureText:false,
              label: 'Email',
            ),
            SizedBox(height: 30),
            CustomTextFormField(
              controller: passcontroller,
              validator: (value) {
                if (value!.isEmpty) {
                  return "please enter password";
                }
                return null;
              },
                hintText: 'Enter Your Password',
                label: "Password",
                obscureText:isVis,
              Prefixicon:Icon(Icons.lock),
              suffixicon:InkWell(
                onTap:(){
                  isVis=!isVis;
                  print(isVis);
                  setState(() {

                  });

                },
                  child:isVis? Icon(Icons.visibility_off):Icon(Icons.visibility))),

            SizedBox(height: 30),
            CustomElevatedButton(
              textButton: "LOG IN",
              backgroundcolor:Colors.amber,
              foregroundcolor: Colors.black,
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  print("is valid");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
