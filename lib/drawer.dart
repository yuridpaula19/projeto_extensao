import 'package:flutter/material.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // alinha horizontal
        crossAxisAlignment: CrossAxisAlignment.start, // alinha vertical
        children: [
          Container(
            width: double.maxFinite,
            height: 180,
            margin: EdgeInsets.only(top: 50),
            // color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(
                  color: Colors.white,
                ),
                // SizedBox(
                //   height: 8,
                // ),
                Text(
                  "Meus Dados",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Fale Conosco",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sair",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            "assets/ponta_04.png",
            height: 100,
            width: 150,
          )
        ],
      ),
    );
  }
}
