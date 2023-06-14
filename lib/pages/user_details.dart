import 'package:flutter/material.dart';
import 'package:bus_tracking_system/componenets/square_title.dart';
import 'package:bus_tracking_system/pages/bus_details.dart';
import 'package:bus_tracking_system/componenets/button.dart';


class UserDetails extends StatelessWidget{
  const UserDetails({super.key});

  get usernameController => null;
  get signUserIn => null;

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/images/background.png'),
            fit: BoxFit.fill,
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(height: 20),
              Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  'lib/images/bus.png',
                  height: 150,
                  width: 250,
                  fit: BoxFit.fitHeight,
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Your Location',
                ),
              ),
              SizedBox(height: 10,),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Your Destination',
                ),

              ),
              SizedBox(height: 20,),
              Center(
                child: Container(
                  width: 300,
                  height: 220,
                  decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.black),
                ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Bus Type",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Text(
                          'Normal',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Text('Semi - Luxary'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Text('Luxary'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),
              MyButton(
                  text: "Find Bus",
                  onTap: () {
                    // Navigate to the new page.
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserBusDetails()),
                    );
                  }
              ),
            ],
          ),
        ],
      ),
    );
  }
}