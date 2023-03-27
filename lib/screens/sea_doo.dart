import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samaco/models/reusable_card.dart';

class SeaDooScreen extends StatefulWidget {
  static String id = 'sea_doo_screen';
  const SeaDooScreen({Key? key}) : super(key: key);

  @override
  State<SeaDooScreen> createState() => _SeaDooScreenState();
}

class _SeaDooScreenState extends State<SeaDooScreen> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        centerTitle: true,
        title:  Text('SEA-DOO'),

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
                          SizedBox(
                              height: 150,
                              width: 150,
                              child: Image(image: AssetImage('assets/images/sea-doo/spark trixx.jpg'))),
                          Column(
                            children: [
                              Text('Sea-Doo Spark Trixx'),
                              // Text('2023,2022,2021...'),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios),
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
                          SizedBox(
                              height: 150,
                              width: 150,
                              child: Image(image: AssetImage('assets/images/sea-doo/SPARK TRIXX 2 UP.jpg'))),
                          Column(
                            children: [
                              Text('Sea-Doo Spark Trixx 2 Up'),
                              // Text('2023,2022,2021...'),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios),
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
                          SizedBox(
                              height: 150,
                              width: 150,
                              child: Image(image: AssetImage('assets/images/sea-doo/SPARK TRIXX 3 UP.jpg'))),
                          Column(
                            children: [
                              Text('Sea-Doo Spark Trixx 3 Up'),
                              // Text('2023,2022,2021...'),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios),
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
                          SizedBox(
                              height: 150,
                              width: 150,
                              child: Image(image: AssetImage('assets/images/sea-doo/seadoo gti.jpg'))),
                          Column(
                            children: [
                              Text('Sea-Doo Spark GTI'),
                              // Text('2023,2022,2021...'),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios),
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
                          SizedBox(
                              height: 150,
                              width: 150,
                              child: Image(image: AssetImage('assets/images/sea-doo/seadoo gtr.jpg'))),
                          Column(
                            children: [
                              Text('Sea-Doo Spark GTR'),
                              // Text('2023,2022,2021...'),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios),
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
                          SizedBox(
                              height: 150,
                              width: 150,
                              child: Image(image: AssetImage('assets/images/sea-doo/seadoo gtx.jpg'))),
                          Column(
                            children: [
                              Text('Sea-Doo Spark GTX'),
                              // Text('2023,2022,2021...'),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios),
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
                          SizedBox(
                              height: 150,
                              width: 150,
                              child: Image(image: AssetImage('assets/images/sea-doo/seadoo gts.jpg'))),
                          Column(
                            children: [
                              Text('Sea-Doo Spark GTS'),
                              // Text('2023,2022,2021...'),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios),
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
                          SizedBox(
                              height: 150,
                              width: 150,
                              child: Image(image: AssetImage('assets/images/sea-doo/seadoo wakepro.jpg'))),
                          Column(
                            children: [
                              Text('Sea-Doo Spark Wake Pro'),
                              // Text('2023,2022,2021...'),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios),
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
              autofocus: true,
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
                      SnackBar snackBar = SnackBar(
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
