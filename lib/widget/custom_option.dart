import 'package:flutter/material.dart';

class Custom_Option extends StatelessWidget {
  final String title;
  final IconData? iconData;

  const Custom_Option({
    required this.title,
    this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30, right: 30, bottom: 20),
      child: SizedBox(
        height: 70,
        child: ElevatedButton(
            style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 220, 160, 160)),
                elevation: MaterialStateProperty.all(0),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
                backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 227, 228, 230))),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      iconData,
                      color: Colors.redAccent,
                      size: 30,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      title,
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    )
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.redAccent,
                )
              ],
            )),
      ),
    );
  }
}
