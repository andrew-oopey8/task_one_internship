import 'package:country_code_picker/country_code_picker.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:task1/components.dart';
import 'package:task1/signup_page.dart';

class LoginPage extends StatelessWidget {
  final formregKey = GlobalKey<FormState>();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal,),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: formregKey,
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
                          'Login',
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 190,
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
                      height: 20.0,
                    ),
                    defaultButton(
                        radius: 8,
                        width: double.infinity,
                        function: () {
                          if (formregKey.currentState!.validate()) {
                            print('Hello');
                          }
                        },
                        text: 'Sign In',
                        isUpperCase: false,
                        background: Colors.teal),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Doesn\'t has any account?',
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignupPage()));
                          },
                          child: const Text(
                            'Register here',style: TextStyle(color: Colors.teal),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                    Center(
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(16),
                            child: Text(
                              'Use the application according to policy rules. Any kind of violations will be subject to sanctions',
                              style: TextStyle(wordSpacing: 2),
                              maxLines: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
