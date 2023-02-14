import 'package:auth_firebase/screens/login_screen.dart';
import 'package:auth_firebase/widgets/add_form_field.dart';
import 'package:auth_firebase/widgets/container_button.dart';
import 'package:auth_firebase/widgets/signin/login_upper_text.dart';
import 'package:auth_firebase/widgets/signup/choose_gender.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordVontroller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
          onTap: () =>  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginScreen(),)),
          child: const Icon(
            Icons.arrow_back_ios_new_rounded, 
            color: Colors.orange,
          ),
        ),
        backgroundColor: Colors.white10,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
      
            loginUpperText('Signup'),
      
            loginLowerText('Signup to Enter'),
      
            SizedBox(height: MediaQuery.of(context).size.height * .05,),
      
            Form(
              autovalidateMode: AutovalidateMode.always,
              key: formkey,
              child: Column(
                children: [
                  addFormField(
                    labelText: 'Username',
                    hintText: 'username', 
                    validController: usernameController,
                    obscureText: false,
                    validator: MultiValidator([
                      RequiredValidator(errorText: "Field should not be empty"),
                      MinLengthValidator(4, errorText: "Username cannot be less than 4"),
                      MaxLengthValidator(8, errorText: "Username cannot be more than 8")
                    ])
                  ),
      
                  SizedBox(height: MediaQuery.of(context).size.height * .03,),
      
                  addFormField(
                    labelText: 'Email',
                    hintText: 'email', 
                    validController: emailController,
                    obscureText: false,
                    validator: MultiValidator([
                      RequiredValidator(errorText: "Field should not be empty"),
                      EmailValidator(errorText: "Invalid Email")
                    ])
                  ),
      
                  SizedBox(height: MediaQuery.of(context).size.height * .03,),
      
                  addFormField(
                    labelText: 'Password',
                    hintText: '********', 
                    validController: passwordController,
                    obscureText: true,
                    validator: MultiValidator([
                      RequiredValidator(errorText: "Field should not be empty"),
                      MinLengthValidator(6, errorText: "Password cannot be less than 6"),
                      MaxLengthValidator(25, errorText: "Password cannot be more than 25")
                    ])
                  ),
      
                  SizedBox(height: MediaQuery.of(context).size.height * .03,),
      
                  addFormField(
                    labelText: 'Confirm Password',
                    hintText: '********', 
                    validController: confirmPasswordVontroller,
                    obscureText: true,
                    validator: (val) {
                      if(passwordController.text.toString() != confirmPasswordVontroller.text.toString()){
                        return "password doesnot match";
                      }
                      else{
                        return null;
                      }
                    },
                  ),
                ],
              )
            ),
      
            SizedBox(height: MediaQuery.of(context).size.height * .03,),
      
            const ChooseGender(),
      
            SizedBox(height: MediaQuery.of(context).size.height * .05,),
            
            InkWell(
              onTap: (){
                if(formkey.currentState!.validate()){
                  print('true');
                }else{
                  print('false');
                }
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: containerButton(context,'Signup')
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}