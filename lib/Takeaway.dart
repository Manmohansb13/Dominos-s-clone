import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class takeaway extends StatelessWidget {
  const takeaway({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Takeaway",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                border: Border.all(color: Colors.grey),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                        child: Text("Your Location",style: TextStyle(color: Colors.grey),)),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Vellore",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        Text("Change",style: TextStyle(color: Colors.blue),),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Align(
            alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Restaurants(s) Near Your Location",style: TextStyle(fontSize:16.0,fontWeight: FontWeight.bold),),
              ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color:Colors.grey)
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('image/logo.png'),
                          backgroundColor: Colors.black,
                          radius: 25,
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Vellore,Tamil Nadu",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("Vellore,Tamil NaduUPh-4162244445",style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:80),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Open:"),
                            Text("10:55AM to 11:59PM"),
                          ],
                        ),

                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:80),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Distance:"),
                            Text("3.5km")
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50,),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("View on Map",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
                        Container(
                          height: 40,
                          width: 125,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "SELECT",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 50,),
          Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
            ),
            child: Center(child: Text("VIEW MORE RESTAURANTS",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)),
          )
        ],
      ),


    );
  }
}
