import 'package:flutter/material.dart';
import 'package:samaco/constants/colors_constants.dart';
import 'package:samaco/models/buttons.dart';
import 'package:samaco/ui/screens/brand_screen.dart';
import 'package:samaco/ui/screens/vehicle_enquiry_screen.dart';

import '../../constants/image_constants.dart';

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
                Image(image: AssetImage(AppImages.logo),),
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
                MainButton(
                  text: 'Parts',
                  color: AppColors.secondaryColor,
                  textColor: AppColors.primaryColor,
                  onPressed: () {
                    Navigator.pushNamed(context, BrandScreen.id);
                  },
                ),
                MainButton(
                  text: 'Accessories',
                  color: AppColors.secondaryColor,
                  textColor: AppColors.primaryColor,
                  onPressed: () {
                    Navigator.pushNamed(context, BrandScreen.id);
                  },
                ),
                MainButton(
                  text: 'Vehicles',
                  color: AppColors.secondaryColor,
                  textColor: AppColors.primaryColor,
                  onPressed: () {
                    Navigator.pushNamed(context, VehicleEnquiry.id);
                  },
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
