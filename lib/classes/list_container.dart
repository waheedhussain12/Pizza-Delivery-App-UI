import 'package:flutter/material.dart';
import 'package:foodapp/third_page.dart';

class ListContainer extends StatelessWidget {
  final String title;
  final String title2;
  final String title3;
  const ListContainer(
      {Key? key,
      required this.title,
      required this.title2,
      required this.title3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ThirdPage()));
        },
        child: Container(
          height: 220,
          width: 180,
          decoration: BoxDecoration(
              color: Colors.white70, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(image: AssetImage('images/wahed.png')),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      title2,
                      style: TextStyle(
                          color: Color(0xffFF9340),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  title3,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
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
