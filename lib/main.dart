import 'package:flutter/material.dart';
import 'package:samaco/ui/screens/brand_screen.dart';
import 'package:samaco/ui/screens/ducati_screen.dart';
import 'package:samaco/ui/screens/sea_doo.dart';
import 'package:samaco/ui/screens/splash_screen.dart';
import 'package:samaco/ui/screens/initial_screen.dart';
import 'package:samaco/ui/screens/can_am_screen.dart';
import 'package:samaco/ui/screens/vehicle_enquiry_screen.dart';

void main() {
  runApp(const Samaco());
}

class Samaco extends StatelessWidget {
  const Samaco({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.blueGrey[900],

          primarySwatch: Colors.blue,
        ),
        initialRoute: SplashScreen.id,
        onGenerateRoute: (settings) {
          var routes = <String, WidgetBuilder>{
            SplashScreen.id: (context) => SplashScreen(),
            InitialScreen.id: (context) => InitialScreen(),
            BrandScreen.id: (context) => BrandScreen(),
            CanAmScreen.id: (context) => CanAmScreen(),
            SeaDooScreen.id: (context) => SeaDooScreen(),
            DucatiScreen.id: (context) => DucatiScreen(),
            VehicleEnquiry.id: (context) => VehicleEnquiry(),
          };
          WidgetBuilder builder =
              routes[settings.name] ?? (ctx) => InitialScreen();
          return MaterialPageRoute(builder: (ctx) => builder(ctx));
        });
  }
}
