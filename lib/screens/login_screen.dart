import 'package:auth_firebase/screens/signup_screen.dart';
import 'package:auth_firebase/widgets/add_form_field.dart';
import 'package:auth_firebase/widgets/container_button.dart';
import 'package:auth_firebase/widgets/signin/forget_password.dart';
import 'package:auth_firebase/widgets/signin/login_upper_text.dart';
import 'package:auth_firebase/widgets/signin/sign_in_options.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

   GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                loginUpperText('Welcome'),
                loginLowerText('Signin to continue'),
                  
                SizedBox(height: MediaQuery.of(context).size.height * .06,),
                  
                addFormField(
                  hintText: 'admin@gmail.com',
                  labelText: 'Email',
                  validator: RequiredValidator(errorText: 'Email is required'),
                  obscureText: false
                ),
                  
                SizedBox(height: MediaQuery.of(context).size.height * .05,),
                  
                addFormField(
                  hintText: '********',
                  labelText: 'Password',
                  validator: RequiredValidator(errorText: 'Password is required'),
                  obscureText: true
                ),
                
                forgetPassword(context),
                  
                SizedBox(height: MediaQuery.of(context).size.height * .05,),
                  
                InkWell(
                  onTap: (){
                    if(formkey.currentState!.validate()){
                      return print('true');
                    }else{
                      return print('false');
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: containerButton(context,'Login')
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .015,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignupScreen(),));
                      }, 
                      child: Text("\tCreate one",style: TextStyle(color: Colors.orange.shade300),)
                    )
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .04,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: const [
                      Expanded(
                        child: Divider(
                          thickness: 1.5,
                          endIndent: 15.0,
                        )
                      ),
                      Text('Or'),
                      Expanded(
                        child: Divider(
                          thickness: 1.5,
                          indent: 15.0,
                        )
                      ),
                    ],
                  ),
                ),
          
                SizedBox(height: MediaQuery.of(context).size.height * .04,),
          
                signInOptions(context,'assets/logo/google.png','Signin with google'),
          
                SizedBox(height: MediaQuery.of(context).size.height * .03,),
          
                signInOptions(context,'assets/logo/apple.png','Signin with apple'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}