import 'package:flutter/material.dart';
// This code is for the bottom bar
class Bottombar extends StatelessWidget {
  const Bottombar({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 70.0,
          width: 330,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200),
            color: Colors.green,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButton(
                    onPressed: (){},
                    icon:const Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                  const Text("Menu",style: TextStyle(color: Colors.white),),
                ],
              ),
              Container(
                color: Colors.black,
                height: 30.0,
                width: 2.0,
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: (){},
                    icon:const Icon(
                      Icons.people,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                  Text("EDV",style: TextStyle(color: Colors.white),),
                ],
              ),
              Container(
                color: Colors.black,
                height: 30.0,
                width: 2.0,
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: (){},
                    icon:Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                  Text("Cart",style: TextStyle(color: Colors.white),),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}