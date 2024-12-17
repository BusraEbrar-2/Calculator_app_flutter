import 'package:flutter/material.dart';
import 'anaekran.dart' ;
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hesapmakinesi',
      home : Iskele(),
  
    );
  }
}

class Iskele extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar : AppBar(title: Text ("hesapmakinesi"),),
body : AnaEkran(),
    );
 
  }
}

class AnaEkran extends StatefulWidget {
  

  @override
  State<AnaEkran> createState() => _AnaEkranState();
}



class _AnaEkranState extends State<AnaEkran> {
 num sayi1 = 0, sayi2 = 0, sonuc = 0;

  



  TextEditingController t1 = TextEditingController() ;
  // isim vermek için textfield içini okumak için 
  TextEditingController t2 = TextEditingController() ;

  sayiTopla(){
setState(() {
 sayi1 = num.parse( t1.text );
 sayi2 = num.parse(t2.text) ;
  sonuc = sayi1+sayi2 ;
});
  }
   void sayiCikar() {
    setState(() {
    sonuc = sayi1-sayi2 ;

    });
  }
  void sayiCarp() {
    setState(() {
     sonuc =  sayi1 * sayi2;
    });
  }
void sayiBol() {
    setState(() {
      if (sayi2 != 0) {
        sonuc =  sayi1 / sayi2;
      } else {
        sonuc = double.nan; // Bölünemez hatası
      }
    });
  }

  
  
  
  
  
  
  
  Widget build(BuildContext context) {
    return Container  ( 
      margin :EdgeInsets.all(50.0) ,
      child : Center (
        child:Column(
          children: [
            Text ("$sonuc"),
         TextField(
          controller:t1 ,
         ),// kullancıdan sayı girişşi almak için 
         TextField(
          controller: t2,
         ),
         Row (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         ElevatedButton(onPressed:sayiTopla,child: Text("Topla"), ),
                  ElevatedButton(onPressed:sayiCikar,child: Text("Cıkar"), ),
                           ElevatedButton(onPressed:sayiCarp,child: Text("Carp"), ),
                                    ElevatedButton(onPressed:sayiBol,child: Text("Böl"), ),
         ],)




          ],
        ),)


    );
  }
}