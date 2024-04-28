import 'package:devconnect/Screens/Auth/login_screen.dart';
import 'package:devconnect/utils/app_colour.dart';
import 'package:devconnect/utils/screen_size.dart';
import 'package:devconnect/utils/assets_helper.dart';
import 'package:devconnect/widgets/text_field_input.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final bool _isLoading = false;

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _usernameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColour,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 2,
                child: Container(),
              ),
              Image.asset(
                assetsImageHelper.signup,
                height: SizeConfig.screenW,
              ),
              TextFieldInput(
                textInputType: TextInputType.text,
                textEditingController: _usernameController,
                lblHint: 'Username',
              ),
              const SizedBox(
                height: 24,
              ),
              TextFieldInput(
                textInputType: TextInputType.emailAddress,
                textEditingController: _emailController,
                lblHint: 'Email',
              ),
              const SizedBox(
                height: 24,
              ),
              TextFieldInput(
                textInputType: TextInputType.text,
                textEditingController: _passwordController,
                isPass: true,
                lblHint: 'Password',
              ),
              const SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: () {
                  //! Signup Function Called
                },
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    color: primaryLogoColourPurple,
                  ),
                  child: !_isLoading
                      ? const Text(
                          'Sign up',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      : const CircularProgressIndicator(
                          color: primaryLogoColourOrange,
                        ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Flexible(
                flex: 2,
                child: Container(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: const Text(
                      'Already have an account?? ',
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: const Text(
                        ' Login.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: primaryLogoColourPurple,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
