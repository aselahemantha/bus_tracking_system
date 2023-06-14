import 'package:flutter/material.dart';
import 'package:bus_tracking_system/pages/register_bus_next.dart';
import 'package:bus_tracking_system/componenets/text_field.dart';
import 'package:bus_tracking_system/componenets/button.dart';

class RegisterBus extends StatelessWidget{
  const RegisterBus({super.key});

  get usernameController => null;
  get signUserIn => null;

  @override
  Widget build(BuildContext context){
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(28, 57, 187, 100),
          title: const Center(
            child: Text(
              "Bus Tracking System",
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
                SizedBox(height: 15),
                MyTextField(
                  controller: usernameController,
                  hintText: 'Enter your username',
                  obscureText: false,
                ),
                SizedBox(height: 15),
                MyTextField(
                  controller: usernameController,
                  hintText: 'Enter your email',
                  obscureText: false,
                ),
                SizedBox(height: 15),
                MyTextField(
                  controller: usernameController,
                  hintText: 'Enter your password',
                  obscureText: false,
                ),
                SizedBox(height: 15),
                MyTextField(
                  controller: usernameController,
                  hintText: 'Enter your contact number',
                  obscureText: false,
                ),
                SizedBox(height: 15),
                MyTextField(
                  controller: usernameController,
                  hintText: 'Enter your bus registerID',
                  obscureText: false,
                ),
                SizedBox(height: 15),
                MyButton(
                  text: "Next",
                  onTap: () {
                    // Navigate to the new page.
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterBusNext()),
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