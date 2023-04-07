import 'package:flutter/material.dart';
import 'package:samaco/constants/image_constants.dart';
import 'package:samaco/models/buttons.dart';
import 'package:samaco/ui/screens/can_am_screen.dart';
import 'package:samaco/ui/screens/sea_doo.dart';
import 'package:samaco/ui/screens/ducati_screen.dart';
import 'package:samaco/constants/colors_constants.dart';

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
              Image(
                image: AssetImage(AppImages.logo),
              ),
              SizedBox(
                height: 70,
              ),
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
              MainButton(
                text: 'CAN-AM',
                color: AppColors.secondaryColor,
                textColor: AppColors.primaryColor,
                onPressed: () {
                  Navigator.pushNamed(context, CanAmScreen.id);
                },
              ),
              MainButton(
                text: 'SEA-DOO',
                color: AppColors.secondaryColor,
                textColor: AppColors.primaryColor,
                onPressed: () {
                  Navigator.pushNamed(context, SeaDooScreen.id);
                },
              ),
              MainButton(
                text: 'DUCATI',
                color: AppColors.secondaryColor,
                textColor: AppColors.primaryColor,
                onPressed: () {
                  Navigator.pushNamed(context, DucatiScreen.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
