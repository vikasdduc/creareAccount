import 'dart:core';


import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}): super (key: key);
  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage>{
List <String> list1 = [
          "images/wom.jpg"
          "images/wom.jpg"
          "images/wom.jpg"
          "images/wom.jpg"
          "images/wom.jpg"
          "images/wom.jpg"
          "images/wom.jpg"
          "images/wom.jpg"
          "images/wom.jpg"
          "images/wom.jpg"
          "images/wom.jpg"
          "images/wom.jpg"
          "images/wom.jpg"
          "images/wom.jpg"
          "images/wom.jpg"
          "images/wom.jpg"
          "images/wom.jpg"
          "images/wom.jpg"
          "images/wom.jpg"
          "images/wom.jpg"

];

List<String> text1 = [
  "Recharge"
  "IMPS"
  "MOVE TO BANK"
  "NSDL PAN"
      "Recharge"
      "IMPS"
      "MOVE TO BANK"
      "NSDL PAN"
      "Recharge"
      "IMPS"
      "MOVE TO BANK"
      "NSDL PAN"
      "Recharge"
      "IMPS"
      "MOVE TO BANK"
      "NSDL PAN"
      "Recharge"
      "IMPS"
      "MOVE TO BANK"
      "NSDL PAN"

];
  @override
  Widget build (BuildContext context){
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('HOME',style: TextStyle(fontSize: 20,color: Colors.white)),
          leading:  Drawer(
            backgroundColor: Colors.blue,
            child: IconButton(
              icon: const Icon( Icons.menu, color: Colors.white,),
              onPressed: () { },
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon( Icons.notifications, color: Colors.white,),
              onPressed: () { },
            ),

            IconButton(
              icon: const Icon( Icons.power_settings_new, color: Colors.red,),
              onPressed: () { },
            ),
            IconButton(
              icon: const Icon( Icons.more_vert, color: Colors.white,),
              onPressed: () { },
            ),
          ],
        ),
      body: Column(
        children: [
          Card(
           color: Colors.blue,
           elevation: 8.0,
             child: Container(
               padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                 height: 200,
                 width: 350,
               child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                   children: const [
                                       Text('Wallet BALANCE'),
                                       Text('₹ 28'),
                                             ],
                                          ),
                             const SizedBox(height: 50, width: 10,),
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                                 children: const [
                                     Text('AEPS BALANCE'),
                                     Text('₹ 1'),
                                ],
                           ),
                           ],
                       ),
                        Column(
                         children: const [
                           Text('scrolling text row')
                         ],
                        )
                     ],
               ),
             )
          ),
          Expanded(
              child: GridView.builder(
              itemCount: 40,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
              itemBuilder: (context, index){
                return Container(
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    children: [
                      //Center(
                      //  child: Icon(Icons.supervisor_account, size: 10,), ),
                      Image.asset("images/wom.jpg"),
                      const Text("BANK")
                    ],
                  ),
                );
              }
          )),
        ],
      ),


      );
  }

}
