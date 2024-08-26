import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../core/app_assets/app_assets.dart';
import '../../core/validator/validator.dart';
import '../../widget/app_button.dart';
import '../../widget/app_text.dart';
import '../../widget/custom_input_field.dart';
import '../../widget/dont_have_acc.dart';
import '../../widget/square_tile.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {

  bool obscureText = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                  onTap: () {
                    FocusScope.of(context).unfocus();
                  },
                  child: Scaffold(
                    appBar: AppBar(
                      leading: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.keyboard_arrow_left,
                        ),
                      ),
                    ),
                    backgroundColor: Colors.white,
                    body: Form(
                      key: formKey,
                      child: SafeArea(
                                child: Padding(
                                  padding: EdgeInsets.all(15),
                                  child: ListView(
                                    children: [
                                      Text(
                                        "Welcome back! Glad \n to see you, Again!",
                                        style: TextStyle(fontWeight: FontWeight.bold,
                                            fontSize: 25
                                        ),
                                      ),
                                      SizedBox(height: 30),
                                      CustomInputField(
                                        hintText: 'Enter your Email',
                                        controller: emailController,
                                        labelText: "email",
                                        validator: (value){
                                          return Validator.validateEmail(value);},
                                      ),

                                      const SizedBox(
                                        height: 8,
                                      ),
                                      SizedBox(
                                        height: 45,
                                        child:
                                        CustomInputField(
                                          hintText: 'Your password',
                                          labelText: "password",
                                          obscureText: true,
                                          suffixIcon: true,
                                          controller: passwordController,
                                          validator:  (value){
                                            if(value!.isEmpty){
                                              return 'Enter Your password';
                                            }if(value.length < 6){
                                              return "Password must be at least 6 characters";
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: InkWell(
                                          onTap: () {},
                                          child: const AppText(
                                            text: 'Forgot your password? ',
                                          ),
                                        ),
                                      ),

                                      SizedBox(height: 20),
                                      AppButton(
                                        title:  'Login',
                                        onTap: () {},
                                      ),
                                      SizedBox(height: 15),
                                      Align(
                                        alignment: Alignment.center,
                                        child: AppText(
                                          text: 'Or login with social account',
                                        ),
                                      ),

                                      SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          SquareTile(imagePath: AppAssets.faceBookAsset),
                                          SquareTile(imagePath: AppAssets.googleAsset),
                                          SquareTile(imagePath: AppAssets.appleAsset),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                      DontHaveAnAccountWidget(),
                                    ],
                                  ),
                                ),
    )

                          ),
                    ),
                  );
  }
}
