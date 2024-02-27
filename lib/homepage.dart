import 'package:dominos/BottomBar.dart';
import 'package:dominos/Takeaway.dart';
import 'package:dominos/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late int selectedRadio;

  void initState(){
    selectedRadio=0;
  }
  // Setting the groupvalue of the radio button
  setSelectedRadio(int val){
    setState(() {
      selectedRadio=val;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Bottombar(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Column(
          children: [
            Row(
              children: [
                Text("Delivery to",style: TextStyle(color: Colors.white),),
                Icon(Icons.arrow_drop_down,color: Colors.white,),
              ],
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text("Vellore",style: TextStyle(color: Colors.white),),
            ),

          ],
        ),
        leading: GestureDetector(
          onTap: (){},
          child: Icon(Icons.menu,color: Colors.white,),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 30.0),
            child: GestureDetector(
              onTap: (){},
              child: Icon(Icons.search,color: Colors.white,),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0,left: 10.0,right: 10.0),
              child: Row(
                children: [
                  Container(
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      border: Border.all(
                        color: Colors.grey,
                        width: 2
                      )
                    ),

                    // Radio buttons in a row
                    child:Row(
                      children: [
                        Radio(
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          value: 1,
                          activeColor: Colors.blue,
                          groupValue:selectedRadio,
                          onChanged: (val){
                            setSelectedRadio(val!);
                          },
                        ),
                        Text("Delivery"),
                        Radio(
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          value: 2,
                          activeColor: Colors.blue,
                          groupValue: selectedRadio,
                          onChanged: (val){
                            setSelectedRadio(val!);
                            setState(() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => takeaway()),
                              );
                            });
                          },
                        ),
                        Text("Takeaway"),
                        Radio(
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          value: 3,
                          activeColor: Colors.blue,
                          groupValue: selectedRadio,
                          onChanged: (val){
                            setSelectedRadio(val!);
                          },
                        ),
                        Text("Dine in"),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 50.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.train_outlined),
                        Column(
                          children: [
                            Text("Deliver"),
                            Text("On train"),
                          ],
                        )
                      ],
                    ),

                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),

            // First Banner
            Container(
              height: 150.0,
              width: MediaQuery.of(context).size.height-185.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  bannerlist('image/o1.jpg'),
                  bannerlist('image/o2.jpeg'),
                  bannerlist('image/o3.jpg'),
                  bannerlist('image/o4.jpg'),
                  bannerlist('image/o5.jpg'),
                ],
              ),
            ),
            SizedBox(height: 20,),
            const Column(
              children: [
                Padding(padding: EdgeInsets.only(left: 22.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Explore Menu",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20.0,),
          //   2nd Menu
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                          border: Border.all(
                            color: Colors.grey
                          )
                        ),
                        child: Column(
                          children: [
                            Padding(
                                padding: EdgeInsets.all(8.0),
                              child: Image.asset('image/vp1.jpeg'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Veg Pizza"),
                            ),
                          ],
                        ),
                      ),
                    ),


                  //   Non veg pizza in row
                    InkWell(
                      onTap: (){},
                      child: Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
                            border: Border.all(
                                color: Colors.grey
                            )
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Image.asset('image/nvp.jpeg'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Non-Veg Pizza"),
                            ),

                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 10.0,),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                          border: Border.all(
                            color: Colors.grey,
                          )
                        ),
                        child: Column(
                          children: [
                            Image.asset('image/sides1.jpeg',height: 120.0,width: 120.0,),
                            Text("Sides and others"),
                          ],
                        ),
                      ),
                    ),
                  //   Beverages
                    InkWell(
                      onTap: (){},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                            border: Border.all(
                              color: Colors.grey,
                            )
                        ),



                        // For sides and others
                        child: Column(
                          children: [
                            Image.asset('image/beverages2.jpeg',height: 120.0,width: 120.0,),
                            Text("Sides and others"),
                          ],
                        ),
                      ),
                    ),


                  //   Desserts
                    InkWell(
                      onTap: (){},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                            border: Border.all(
                              color: Colors.grey,
                            )
                        ),
                        child: Column(
                          children: [
                            Image.asset('image/desserts.jpeg',height: 120.0,width: 120.0,),
                            Text("Sides and others"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20.0,left: 8.0,right: 8.0),
              child: Container(
                height: 200.0,
                width: MediaQuery.of(context).size.height-185.0,
                child: GestureDetector(
                  onTap: (){},
                  child: Image.asset('image/banner1.jpg'),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Offers",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text("View all",
                      style: TextStyle(fontSize: 18,color: Colors.green,fontWeight: FontWeight.bold),),
                  ],
                )
              ],
            ),
            //   Offers Menu
            SizedBox(height: 30.0,),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.height-185.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  bannerlist('image/offer1.jpeg'),
                  bannerlist('image/oo2.jpg'),
                  bannerlist('image/oo3.jpeg'),
                  bannerlist('image/oo4.jpg'),
                ],
              ),
            ),

            Container(
              height: 150.0,
            )
          ],

        ),
      ),
    );
  }
}


// Creating the scrolling view
Widget bannerlist(String imgpath){
  return GestureDetector(
    onTap: (){

    },
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
      ),
      child: Image.asset(imgpath,fit: BoxFit.fill,),
    ),
  );
}

