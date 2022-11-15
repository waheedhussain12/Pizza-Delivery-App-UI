import 'package:flutter/material.dart';
class PageTwoContainer extends StatelessWidget {

  final String title;
  final Color? MyColor;

  const PageTwoContainer({Key? key,required this.title,required this.MyColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 40,width: 100,
        decoration: BoxDecoration(
            color: MyColor,
            borderRadius: BorderRadius.circular(30)
        ),
        child: Center(
          child: Text(title,style: TextStyle(
              fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold
          ),),
        ),
      ),
    );
  }
}
