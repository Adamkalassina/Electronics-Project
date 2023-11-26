class Ref{
  String ? name;
  late double price;
  String ? img;
  String ? description;

  Ref(this.name,this.price,this.description,this.img);

  String? get Name => name;
  double get Price => price;
  String? get Image => img;
  String? get Description => description;

}
List <Ref> refrigerators = [
  Ref("LG Fridge InstaView 31Cu ft Door in Door",3348,"LG Fridge InstaView 31Cu ft Door in Door , InstaView Door-in-Door, Four Door Refrigerator, 705L Gross Capacity" ,"assets/images/LgScreen.jpg"),
  Ref("LG Fridge Top Mount 22cu ft Silver" , 902 ,"LG Fridge Top Mount 22cu ft Silver , Top Freezer Refrigerator 471L Gross Capacity, Silver Color, Inverter Linear Compressor, DoorCooling+" , "assets/images/LgRef.jpg"),
  Ref("SAMSUNG SIDE BY SIDE REFRIGERATOR", 1450 ,"SAMSUNG SIDE BY SIDE REFRIGERATOR 27 CFT WITH FAMILY HUB | RS27T5561B" ,"assets/images/SamsungScreen.jpg"),
  Ref("SAMSUNG RR35H66107F " , 2500 , "SAMSUNG RR35H66107F/ RR35H66107F PRESTIGE PAIR REFRIGERATOR FREEZER 220-240 VOLT", "assets/images/samsungTwoDoors.jpg"),
  Ref("Hisense Fridge 4 Doors Smart " ,3450 , "Hisense Fridge 4 Doors Smart 22Cuft Triple Cooling Zone" ,"assets/images/HisenseScreen.jpg"),
  Ref("Hisense 17.2-cu ft Counter " ,500 , "Hisense 17.2-cu ft Counter-Depth Bottom-Freezer Refrigerator" ,"assets/images/Hisense.jpg"),
];