class Tv{
  String ? name;
  late double price;
  String ? img;
  String ? description;

  Tv(this.name,this.price,this.description,this.img);

  String? get Name => name;
  double get Price => price;
  String? get Image => img;
  String? get Description => description;

}
List <Tv> televisions = [
  Tv("Samsung 4K Qled 55 inch",1299,"Samsung SmartHub, Multi View, Multiple Voice Assistants, SolarCell Remote 55 inch" ,"assets/images/SamsungQled.jpg"),
  Tv("Samsung 4k Oled 45 inch" , 999 ,"Samsung SmartHub, Multi View, Multiple Voice Assistants, SolarCell Remote 45 inch" , "assets/images/SamsungOled.jpg"),
  Tv("LG 4K Oled  77 inch", 3450 ,"LG OLED evo G3 77 inch 4K Smart TV 2023" ,"assets/images/LgOled.jpg"),
  Tv("LG 8K Qned  65 inch " , 2500 , "LG QNED MiniLED 99 Series 2021 65 inch Class 8K Smart TV w/ AI ThinQ® (64.5'' Diag)", "assets/images/LgQned.jpg"),
  Tv("TCL 4k 65 inch " ,899 , "TCL 164 cm (65 inches) Bezel-Less Full Screen Series Ultra HD 4K Smart LED Google TV 65P635 Pro (Black)" , "assets/images/Tcl1.jpg"),
  Tv("TCL 4k 55inch" , 500 , "TCL 55 Q CLASS 4K QLED HDR SMART TV WITH GOOGLE TV - 55Q750G","assets/images/Tcl2.jpg")
];
