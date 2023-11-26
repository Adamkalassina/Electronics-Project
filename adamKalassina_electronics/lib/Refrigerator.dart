import 'package:flutter/material.dart';

import 'RefItems.dart';

class Refrigerators extends StatefulWidget {
  Refrigerators({Key?key}) : super(key: key);

  @override
  _RefrigeratorsState createState() {
    return _RefrigeratorsState();
  }
}

class _RefrigeratorsState extends State<Refrigerators> {
  void seePrice(Ref r) {
    showDialog(
        context: context,
        builder: (builder) {
          double price = r.price;
          String? desc = r.description;
          String msg = "The price is : $price \$";
          return AlertDialog(
            title: Text(
              "$desc",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            content: Text(
              msg,
              style: TextStyle(fontSize: 25, color: Colors.blue),
            ),
          );
        });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Refrigerators Section"),
        centerTitle: true,
      ),
      body: ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: refrigerators.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  refrigerators[index].name.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(refrigerators[index].img.toString(),height: 300,),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      seePrice(refrigerators[index]);
                    },
                    child: Text("See Price")),
                SizedBox(
                  height: 80,
                ),
              ],
            );
          }),
    );
  }
}