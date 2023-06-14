import 'package:flutter/material.dart';

import 'package:bus_tracking_system/componenets/text_field.dart';
import 'package:bus_tracking_system/componenets/button.dart';

class RegisterBusNext extends StatelessWidget{
  const RegisterBusNext({super.key});

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
                  hintText: 'Beginning',
                  obscureText: false,
                ),
                SizedBox(height: 15),
                MyTextField(
                  controller: usernameController,
                  hintText: 'Destination',
                  obscureText: false,
                ),
                SizedBox(height: 15),
                MyTextField(
                  controller: usernameController,
                  hintText: 'Time Duration',
                  obscureText: false,
                ),
                SizedBox(height: 15),
                MyTextField(
                  controller: usernameController,
                  hintText: 'Start Times',
                  obscureText: false,
                ),
                SizedBox(height: 15),
                MyTextField(
                  controller: usernameController,
                  hintText: 'Seat Capacity',
                  obscureText: false,
                ),
                SizedBox(height: 15),
                MyButton(
                  text: "Register",
                  onTap: signUserIn,
                ),
              ],
            ),
          ),
        )
    );
  }
}