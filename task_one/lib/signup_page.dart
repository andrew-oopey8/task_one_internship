import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:task1/components.dart';
import 'package:task1/login_page.dart';

class SignupPage extends StatefulWidget {
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final phoneController = TextEditingController();
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal,),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Welcome to Fashion Daily'),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 140,
                    ),
                    Text(
                      'Help',
                      style: TextStyle(color: Colors.teal),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.help, color: Colors.teal),
                  ],
                ),
                const SizedBox(
                  height: 40.0,
                ),
                const Text('Email'),
                const SizedBox(height: 10),
                defaultFormField(
                    controller: emailController,
                    validate: (value) {},
                    type: TextInputType.emailAddress,
                    prefix: Icons.email),
                const SizedBox(
                  height: 15.0,
                ),
                const Text('Phone Number'),
                const SizedBox(height: 10),
                Column(
                  children: [
                    CountryCodePicker(
                      favorite: ['+20', 'مصر'],
                      initialSelection: 'EG',
                      showFlag: true,
                      enabled: true,
                    ),
                    defaultFormField(
                      controller: phoneController,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'Phone Number is not registered';
                        }
                        return null;
                      },
                      type: TextInputType.phone,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15.0,
                ),
                const Text('Password'),
                const SizedBox(height: 10),
                defaultFormField(
                    controller: passwordController,
                    validate: (value) {},
                    type: TextInputType.visiblePassword,
                    prefix: Icons.lock,
                    isPassword: isPassword,
                    suffix:
                        isPassword ? Icons.visibility : Icons.visibility_off,
                    suffixPressed: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    }),
                const SizedBox(
                  height: 20.0,
                ),
                defaultButton(radius: 8,
                    width: double.infinity,
                    function: () {},
                    text: 'Register',
                    isUpperCase: false,
                    background: Colors.teal),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Has any account?',
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: const Text(
                        'Sign in here',style: TextStyle(color: Colors.teal),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: Column(
                    children: const [
                      Text('By registering your account, you are agree to our'),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'terms and conditions',
                        style: TextStyle(color: Colors.teal),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
