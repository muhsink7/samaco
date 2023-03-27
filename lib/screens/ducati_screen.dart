import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samaco/models/reusable_card.dart';

class DucatiScreen extends StatefulWidget {
  static String id = 'ducati_screen';
  const DucatiScreen({Key? key}) : super(key: key);

  @override
  void initState() {

  }

  @override
  State<DucatiScreen> createState() => _DucatiScreenState();
}

class _DucatiScreenState extends State<DucatiScreen> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          centerTitle: true,
          title:  Text('DUCATI'),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: ClampingScrollPhysics(),
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
                                child: Image(image: AssetImage('assets/images/ducati/scrambler icon.jpg'))),
                            Column(
                              children: [
                                Text('Ducati Scrambler Icon'),
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
                                child: Image(image: AssetImage('assets/images/ducati/DIAVEL V4.png'))),
                            Column(
                              children: [
                                Text('Ducati Diavel V4'),
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
                                child: Image(image: AssetImage('assets/images/ducati/PANIGALE V4 R.png'))),
                            Column(
                              children: [
                                Text('Ducati Panigale V4 R'),
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
                                child: Image(image: AssetImage('assets/images/ducati/MULTISTRADA V4 RALLY.png'))),
                            Expanded(child: Center(
                              child: Text('Ducati Multistrada V4 Rally',
                              overflow: TextOverflow.ellipsis,
                              ),
                            )),
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
                                child: Image(image: AssetImage('assets/images/ducati/STREETFIGHTER V4.png'))),
                            Expanded(child: Center(child: Text('Ducati Streetfighter V4'))),
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
                                child: Image(image: AssetImage('assets/images/ducati/Streetfighter V4 SP2.png'))),
                            Expanded(
                              child: Center(
                                child: Text('Ducati Streetfighter V4 SP2',
                                overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                        onPress: () {}),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(20),
                  //   child: GestureDetector(
                  //     onTap: () {
                  //       DialogUtils.showCustomDialog(context,
                  //           okBtnText: "Add",
                  //           cancelBtnText: "Cancel",
                  //           okBtnFunction: () => print("Ok"),);
                  //     },
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         Icon(Icons.add_circle_rounded),
                  //         SizedBox(
                  //           width: 10,
                  //         ),
                  //         Text('Add a new model'),
                  //       ],
                  //     ),
                  //   ),
                  // )

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
                controller: controller,
                onChanged: (value) {},
                onSubmitted: (value) {},
                autocorrect: true,
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

// class DialogUtils {
//   static DialogUtils _instance = new DialogUtils.internal();
//
//   DialogUtils.internal();
//
//   factory DialogUtils() => _instance;
//
//   static void showCustomDialog(BuildContext context,
//       {
//         String okBtnText = "Ok",
//         String cancelBtnText = "Cancel",
//         required Function okBtnFunction}) {
//     showDialog(
//         context: context,
//         builder: (_) {
//           return Expanded(
//             child: AlertDialog(
//               title: Text('Add a Model'),
//               content: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   TextField(
//                       decoration: InputDecoration(
//                           border: InputBorder.none,
//                           label: Text('Model Name'),
//                           hintText: 'Enter Model Name')
//                   ),
//                   TextField(
//                       decoration: InputDecoration(
//                           border: InputBorder.none,
//                           label: Text('Model Year'),
//                           hintText: 'Enter Year')
//                   ),
//                 ],
//               ),
//               actions: <Widget>[
//                 TextButton(
//                   child: Text('Advanced'),
//                   onPressed: (){
//                     SnackBar snackBar = SnackBar(content: Text('This feature is not available yet'));
//                   },
//                 ),
//                 TextButton(
//                   child: Text(okBtnText),
//                   onPressed: (){
//                     okBtnFunction();
//                     Navigator.pop(context);
//                   },
//                 ),
//                 TextButton(
//                     child: Text(cancelBtnText),
//                     onPressed: () => Navigator.pop(context))
//               ],
//             ),
//           );
//         });
//   }
// }
// void okBtnFunction() {
// SnackBar snackBar = SnackBar(content: Text('This feature is not available yet'));
// }

// void openDialog() => showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return Dialog(
//         shape: RoundedRectangleBorder(
//             borderRadius:
//             BorderRadius.circular(20.0)), //this right here
//         child: Container(
//           height: 200,
//           child: Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 TextField(
//                   decoration: InputDecoration(
//                       border: InputBorder.none,
//                       hintText: 'What do you want to remember?'),
//                 ),
//                 SizedBox(
//                   width: 320.0,
//                   child: TextButton(
//                     onPressed: () {},
//                     child: Text(
//                       "Save",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                     style: ButtonStyle(
//                         backgroundColor:
//                         MaterialStateProperty.all<Color>(
//                             Colors.blue)),
//                 )
//               ],
//             ),
//           ),
//         ),
//       );
//     });
