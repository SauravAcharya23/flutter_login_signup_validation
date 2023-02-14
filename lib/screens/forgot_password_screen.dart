import 'package:auth_firebase/screens/login_screen.dart';
import 'package:auth_firebase/widgets/add_form_field.dart';
import 'package:auth_firebase/widgets/container_button.dart';
import 'package:auth_firebase/widgets/signin/login_upper_text.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  final emailController = TextEditingController();

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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              loginUpperText('Forgot Password'),
        
              loginLowerText('Please enter your email to change your password'),
              
              SizedBox(height: MediaQuery.of(context).size.height * 0.2,),
        
              Form(
                key: formkey,
                child: addFormField(
                  hintText: 'Email',
                  labelText: 'Forgot Password',
                  validController: emailController,
                  obscureText: false,
                  validator: MultiValidator([
                    RequiredValidator(errorText: 'Please provide email to change your password'),
                    EmailValidator(errorText: 'Invalid Email'),
                  ])
                ),
              ),
        
              SizedBox(height: MediaQuery.of(context).size.height * 0.08,),
        
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
                  child: containerButton(context, 'Forgot Password'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}