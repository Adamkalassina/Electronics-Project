import 'package:flutter/material.dart';
import 'Refrigerator.dart';
import 'Televisions.dart';

class Page1 extends StatefulWidget {
  Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() {
    return _Page1State();
  }
}

class _Page1State extends State<Page1> {
  List <String> opt = ["Televisions","Refrigerators"];
  String sel = "";

  void select(String c){
    setState(() {
      sel = c;
    });
  }
  void goto(){
    if(sel == "Televisions"){
      Navigator.of(context).push(MaterialPageRoute(builder: (builder){
        return Televisions();
      }));
    }else{
      Navigator.of(context).push(MaterialPageRoute(builder: (builder){
        return Refrigerators();
      }));
    }
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
    double Screenwidth = MediaQuery.of(context).size.width;
    if(MediaQuery.of(context).orientation == Orientation.landscape){
      Screenwidth =Screenwidth * 0.8;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Electronic Informations",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 50),
              Text("Choose Item",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(height: 30,),
              DropdownMenu(
                dropdownMenuEntries:
                opt.map<DropdownMenuEntry<String>>( (e) {
                  return DropdownMenuEntry <String> (value: e,label:e.toString());
                }
                ) .toList(),
                onSelected: (c){
                  select(c!);
                },
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                goto();
              },
                  child: Icon(Icons.arrow_right,size: 30,),
              )
            ],
          ),
        ),
      ),
    );
  }
}