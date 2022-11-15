import 'package:flutter/material.dart';
import 'package:foodapp/classes/list_container.dart';
import 'package:foodapp/classes/pagetwo_container.dart';
import 'package:foodapp/pizzahut.dart';
import 'package:foodapp/snd_container.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ScndPage extends StatelessWidget {
  const ScndPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
          rippleColor: Colors.grey,
          gap: 8,
          backgroundColor: Color(0xffF5F6FAFF),
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.star_border_outlined,
              text: 'Orders',
            ),
            GButton(
              icon: Icons.chat_bubble_outline_rounded,
              text: 'Chat',
            ),
            GButton(
              icon: Icons.person,
              text: 'Profile',
            ),
          ]),
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffF5F6FAFF),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'pizzza',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffFF9340)),
                    ),
                    SizedBox(
                      width: 200,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 30,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  'Hunger falls here',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                SizedBox(
                  height: 35,
                ),
                Text(
                  'Order your',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff212226)),
                ),
                Text(
                  'desire in any size',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff212226)),
                ),
                SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      PageTwoContainer(
                        title: 'Small',
                        MyColor: Colors.white,
                      ),
                      PageTwoContainer(
                          title: 'Medium', MyColor: Color(0xffFF9340)),
                      PageTwoContainer(
                        title: 'Large',
                        MyColor: Colors.white,
                      ),
                      PageTwoContainer(
                        title: 'Extra Large',
                        MyColor: Colors.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '230 result found ',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.filter_alt,
                      color: Colors.black,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ListContainer(
                        title: 'Cheese Pizza',
                        title2: 'Rs.500',
                        title3: 'Medium Size',
                      ),
                      ListContainer(
                          title: 'Salami Pizza',
                          title2: 'Rs.660',
                          title3: 'Large Size'),
                      ListContainer(
                          title: 'Italian Pizza',
                          title2: 'Rs.1000',
                          title3: 'Extra Large Size'),
                      ListContainer(
                          title: 'Meat Pizza',
                          title2: 'Rs.1250',
                          title3: 'Large Size'),
                      ListContainer(
                          title: 'Greek Pizza',
                          title2: 'Rs.450',
                          title3: 'Small Size'),
                      ListContainer(
                          title: 'Veggie Pizza',
                          title2: 'Rs.1540',
                          title3: 'Medium Size'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Popular',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right_sharp,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SndContainer(),
                      PizzaHut(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
