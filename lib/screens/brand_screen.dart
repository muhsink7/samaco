import 'package:flutter/material.dart';
import 'package:samaco/screens/can_am_screen.dart';
import 'package:samaco/screens/sea_doo.dart';
import 'package:samaco/screens/ducati_screen.dart';

class BrandScreen extends StatefulWidget {
  static String id = 'brand_screen';
  const BrandScreen({Key? key}) : super(key: key);

  @override
  State<BrandScreen> createState() => _BrandScreenState();
}

class _BrandScreenState extends State<BrandScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image(image: AssetImage('assets/images/samacologo.png'),),
              SizedBox(height: 70,),
              Center(
                child: Text('Choose your brand',
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
                      setState(() {
                        Navigator.pushNamed(context, CanAmScreen.id);

                      });
                    },
                    child: const Text('CAN-AM',
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
                      Navigator.pushNamed(context, SeaDooScreen.id);

                    },
                    child: const Text('SEA-DOO',
                    style: TextStyle(
                      color: Color(0xFF263238),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )
                    ),
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
                      setState(() {
                        Navigator.pushNamed(context, DucatiScreen.id);
                      });
                    },
                    child: const Text('DUCATI',
                    style: TextStyle(
                      color: Color(0xFF263238),
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
    );
  }
}
