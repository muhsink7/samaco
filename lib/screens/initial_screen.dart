import 'package:flutter/material.dart';
import 'package:samaco/screens/brand_screen.dart';
import 'package:samaco/screens/vehicle_enquiry_screen.dart';

class InitialScreen extends StatefulWidget {
  static String id = 'initial_screen';
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image(image: AssetImage('assets/images/samacologo.png'),),
                SizedBox(height: 70,),
                Center(
                  child: Text('What are you looking for?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.blueGrey[900],
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 70,
                    child: ElevatedButton(

                      style: ElevatedButton.styleFrom(
                        foregroundColor: Color(0xFF263238),
                        backgroundColor: Colors.white,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xFF263238),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, BrandScreen.id);
                      },
                      child: const Text('Parts',
                      style: TextStyle(
                        color: Color(0xFF263238),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 70,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Color(0xFF263238),
                        backgroundColor: Colors.white,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xFF263238),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, BrandScreen.id);
                      },
                      child: const Text('Accessories',
                      style: TextStyle(
                        color: Color(0xFF263238),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 70,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Color(0xFF263238),
                        backgroundColor: Colors.white,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xFF263238),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, VehicleEnquiry.id);
                      },
                      child: const Text('Vehicle Enquiry',
                      style: TextStyle(
                        color : Color(0xFF263238),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                    ),
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
