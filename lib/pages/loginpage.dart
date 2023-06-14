import 'package:flutter/material.dart';
import 'package:bus_tracking_system/componenets/square_title.dart';
import 'package:bus_tracking_system/componenets/text_field.dart';
import 'package:bus_tracking_system/componenets/button.dart';
import 'package:bus_tracking_system/pages/register_bus.dart';
import 'package:bus_tracking_system/pages/register_user.dart';
import 'package:bus_tracking_system/pages/user_details.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({super.key});

  get usernameController => null;
  get signUserIn => null;

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(28, 57, 187, 100),
        title: const Center(
          child: Text(
            "DriveSync",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      backgroundColor: Color.fromRGBO(204, 204, 255, 20),
      body: SafeArea(
        child: Center(
          child: Column(
            children:  [
              SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(35.0),
                child: Image.asset("lib/images/background-logo.png", height: 75, width: 75),
              ),
              //Image.asset('lib/images/background-logo.png', height: 75, width: 75),
              SizedBox(height: 10),
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),
              SizedBox(height: 10),
              MyTextField(
                controller: usernameController,
                hintText: 'Password',
                obscureText: false,
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              MyButton(
                text: "Sign In",
                onTap: () {
                    // Navigate to the new page.
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserDetails()),
                    );
                  }
              ),
              const SizedBox(height: 20),
              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: const [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  // google button
                  SquareTile(imagePath: 'lib/images/google.jpg'),
                  SizedBox(width: 25),
                  // apple button
                  SquareTile(imagePath: 'lib/images/apple.png'),
                  SizedBox(width: 25),
                  // facebook button
                  SquareTile(imagePath: 'lib/images/facebook.jpg')
                ],
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: const [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Not a member?',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              MyButton(
                text: "Register as a Passenger",
                onTap: () {
                  // Navigate to the new page.
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterUser()),
                  );
                },
              ),
              const SizedBox(height: 10),
              MyButton(
                text: "Register as a Bus",
                onTap: () {
                  // Navigate to the new page.
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterBus()),
                  );
                },
              ),
            ],
          ),
        ),
      )
    );
  }
}