import 'package:flutter/material.dart';
import 'package:bus_tracking_system/componenets/text_field.dart';
import 'package:bus_tracking_system/componenets/button.dart';
import 'package:bus_tracking_system/componenets/bus_card.dart';

class UserBusDetails extends StatelessWidget{
  const UserBusDetails({super.key});

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
                BusCard(),

              ],
            ),
          ),
        )
    );
  }
}