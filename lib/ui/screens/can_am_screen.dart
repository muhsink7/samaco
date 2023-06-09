import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samaco/constants/image_constants.dart';
import 'package:samaco/models/reusable_card.dart';


class CanAmScreen extends StatefulWidget {
  static String id = 'can-am_screen';
  const CanAmScreen({Key? key}) : super(key: key);

  @override
  State<CanAmScreen> createState() => _CanAmScreenState();
}

class _CanAmScreenState extends State<CanAmScreen> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        centerTitle: true,
        title:  const Text('CAN-AM'),
      ),
      body: Stack(
        children: [

          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                  child: ReusableCard(
                      colour: Colors.white,
                      cardChild: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                              height: 150,
                              width: 150,
                              child: Image(image: AssetImage(AppImages.canamMaveric))),
                          Column(
                            children: const [
                              Text('Can-Am Maverick X3'),
                              Text('2023,2022,2021...'),
                            ],
                          ),
                          const Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                      onPress: () {}),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                  child: ReusableCard(
                      colour: Colors.white,
                      cardChild: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                              height: 150,
                              width: 150,
                              child: Image(image: AssetImage(AppImages.canamMavericMax))),
                          Column(
                            children: const [
                              Text('Can-Am Maverick Max'),
                            ],
                          ),
                          const Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                      onPress: () {}),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                  child: ReusableCard(
                      colour: Colors.white,
                      cardChild: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                              height: 150,
                              width: 150,
                              child: Image(image: AssetImage(AppImages.canamOutlander))),
                          Column(
                            children: const [
                              Text('Can-Am Outander'),
                            ],
                          ),
                          const Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                      onPress: () {}),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                  child: ReusableCard(
                      colour: Colors.white,
                      cardChild: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                              height: 150,
                              width: 150,
                              child: Image(image: AssetImage(AppImages.canamTraxterMax))),
                          Column(
                            children: const [
                              Text('Can-Am Traxter Max'),
                            ],
                          ),
                          const Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                      onPress: () {}),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                  child: ReusableCard(
                      colour: Colors.white,
                      cardChild: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                              height: 150,
                              width: 150,
                              child: Image(image: AssetImage(AppImages.canamTraxter))),
                          Column(
                            children: const [
                              Text('Can-Am Traxter'),
                            ],
                          ),
                          const Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                      onPress: () {}),
                ),


                // Card(
                //   child: ListView.builder(
                //     shrinkWrap: true,
                //     itemCount: 5,
                //     itemBuilder: (context, index) {
                //       return ListTile(
                //         leading: Image.asset('assets/images/can-am/maveric.jpg'),
                //         title: const Text('Can-Am Maverick X3'),
                //         subtitle: const Text('2023,2022,2021...'),
                //         trailing: const Icon(Icons.arrow_forward_ios),
                //         onTap: () {
                //           // Navigator.pushNamed(context, 'can-am-maverick-x3');
                //         },
                //       );
                //     },
                //   ),
                // ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: CupertinoSearchTextField(
              backgroundColor: Colors.white,
              controller: controller,
              onChanged: (value) {},
              onSubmitted: (value) {},
              autocorrect: true,
              placeholder: 'Search',

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(

                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blueGrey,
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.blueGrey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      SnackBar snackBar = const SnackBar(
                        content: Text('This feature is not available yet!!',
                          textAlign: TextAlign.center,
                        ),
                        duration: Duration(seconds: 1),
                        // action: SnackBarAction(
                        //   label: 'Exit',
                        //   onPressed: () {
                        //     Navigator.pop(context);
                        //     // Code to execute.
                        //
                        //   },
                        //
                        // ),

                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    });

                  },
                  child: const Text('Add a new model',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
