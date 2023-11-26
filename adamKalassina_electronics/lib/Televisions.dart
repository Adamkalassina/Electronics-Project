import 'package:adamkalassina_electronics/TvItems.dart';
import 'package:flutter/material.dart';

class Televisions extends StatefulWidget {
  Televisions({Key ?key}) : super(key: key);

  @override
  _TelevisionsState createState() {
    return _TelevisionsState();
  }
}

class _TelevisionsState extends State<Televisions> {
  void seePrice(Tv t){
    showDialog(context: context, builder: (builder){
      double price = t.price;
      String? desc =  t.description;
      String msg = "The price is : $price \$";
      return AlertDialog(title : Text("$desc",style: TextStyle(fontWeight: FontWeight.bold),),content: Text(msg,style: TextStyle(fontSize: 25,color: Colors.blue),),);
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
    return Scaffold(
      appBar: AppBar(title: Text("Televisions Section"),centerTitle: true,),
      body: ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: televisions.length,
      itemBuilder: (context,index){
          return Column(
            children: [
              SizedBox(height: 20,),
              Text(televisions[index].name.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              SizedBox(height: 10,),
              Image.asset(televisions[index].img.toString(),height: 300),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){
                seePrice(televisions[index]);
              }, child: Text("See Price")),
              SizedBox(height: 80,),
            ],
          );

      }),
    );
  }
}