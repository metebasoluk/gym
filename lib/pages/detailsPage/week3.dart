import 'package:flutter/material.dart';

class Week3 extends StatelessWidget {
  const Week3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("               G Y M",style: TextStyle(color: Colors.black,fontSize: 25),),backgroundColor:Colors.grey[300] ,elevation: 0,
      leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon:  Icon(
            Icons.arrow_back_ios,color: Colors.grey[800],
            size: 30,
          ),
          onPressed: () {
            //Future.delayed(Duration(seconds: 2), () {
              //   Navigator.pop(context);
                //});

              Navigator.pop(context,);
            

            
            
            
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
      },
    ),
      
      ),
      body: ListView(
        children: [
          
          const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 400,
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[200],
              ),


              child:  const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
              
              
                  children: [
                    SizedBox(height: 15,),
          Center(child:  Text("Pazartesi",style: TextStyle(fontSize: 20),)),
                    SizedBox(height: 25,),
                    Text("Kahvaltı",style: TextStyle(fontSize: 18, ),),
                    SizedBox(height: 15,),
                    Center(child: Text("Yulaf ezmesi üzerine taze meyveler ve bir avuç badem. Yoğurt veya süt içeren proteinli içecek.",style: TextStyle(fontSize: 16, ),)),
                    
                    SizedBox(height: 25,),
                    Text("Öğle",style: TextStyle(fontSize: 18, ),),
                    SizedBox(height: 15,),
                    Center(child: Text("Izgara tavuk göğsü veya somon balığı. Kırmızı ve yeşil sebzelerle zenginleştirilmiş salata. Esmer pirinç veya tatlı patates.",style: TextStyle(fontSize: 16, ),)),


                    SizedBox(height: 25,),
                    Text("Akşam",style: TextStyle(fontSize: 18, ),),
                    SizedBox(height: 15,),
                    Center(child: Text("Dana eti veya kırmızı mercimek yemeği. Brokoli veya kuşkonmaz. Quinoa veya bulgur pilavı.",style: TextStyle(fontSize: 16, ),)),




              
                  ],

                ),
              ),
              ),
          ),
          const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 400,
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[200],
              ),


              child:  const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
              
              
                  children: [
                    SizedBox(height: 15,),
          Center(child:  Text("Salı",style: TextStyle(fontSize: 20),)),
                    SizedBox(height: 25,),
                    Text("Kahvaltı",style: TextStyle(fontSize: 18, ),),
                    SizedBox(height: 15,),
                    Center(child: Text("Yulaf ezmesi üzerine taze meyveler ve bir avuç badem. Yoğurt veya süt içeren proteinli içecek.",style: TextStyle(fontSize: 16, ),)),
                    
                    SizedBox(height: 25,),
                    Text("Öğle",style: TextStyle(fontSize: 18, ),),
                    SizedBox(height: 15,),
                    Center(child: Text("Izgara tavuk göğsü veya somon balığı. Kırmızı ve yeşil sebzelerle zenginleştirilmiş salata. Esmer pirinç veya tatlı patates.",style: TextStyle(fontSize: 16, ),)),


                    SizedBox(height: 25,),
                    Text("Akşam",style: TextStyle(fontSize: 18, ),),
                    SizedBox(height: 15,),
                    Center(child: Text("Dana eti veya kırmızı mercimek yemeği. Brokoli veya kuşkonmaz. Quinoa veya bulgur pilavı.",style: TextStyle(fontSize: 16, ),)),



                    
              
                  ],

                ),
              ),
              ),
          ),


          const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 400,
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[200],
              ),


              child:  const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
              
              
                  children: [
                    SizedBox(height: 15,),
          Center(child:  Text("Çarşamba",style: TextStyle(fontSize: 20),)),
                    SizedBox(height: 25,),
                    Text("Kahvaltı",style: TextStyle(fontSize: 18, ),),
                    SizedBox(height: 15,),
                    Center(child: Text("Yulaf ezmesi üzerine taze meyveler ve bir avuç badem. Yoğurt veya süt içeren proteinli içecek.",style: TextStyle(fontSize: 16, ),)),
                    
                    SizedBox(height: 25,),
                    Text("Öğle",style: TextStyle(fontSize: 18, ),),
                    SizedBox(height: 15,),
                    Center(child: Text("Izgara tavuk göğsü veya somon balığı. Kırmızı ve yeşil sebzelerle zenginleştirilmiş salata. Esmer pirinç veya tatlı patates.",style: TextStyle(fontSize: 16, ),)),


                    SizedBox(height: 25,),
                    Text("Akşam",style: TextStyle(fontSize: 18, ),),
                    SizedBox(height: 15,),
                    Center(child: Text("Dana eti veya kırmızı mercimek yemeği. Brokoli veya kuşkonmaz. Quinoa veya bulgur pilavı.",style: TextStyle(fontSize: 16, ),)),



                    
              
                  ],

                ),
              ),
              ),
          ),
          const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 400,
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[200],
              ),


              child:  const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
              
              
                  children: [
                    SizedBox(height: 15,),
          Center(child:  Text("Perşembe",style: TextStyle(fontSize: 20),)),
                    SizedBox(height: 25,),
                    Text("Kahvaltı",style: TextStyle(fontSize: 18, ),),
                    SizedBox(height: 15,),
                    Center(child: Text("Yulaf ezmesi üzerine taze meyveler ve bir avuç badem. Yoğurt veya süt içeren proteinli içecek.",style: TextStyle(fontSize: 16, ),)),
                    
                    SizedBox(height: 25,),
                    Text("Öğle",style: TextStyle(fontSize: 18, ),),
                    SizedBox(height: 15,),
                    Center(child: Text("Izgara tavuk göğsü veya somon balığı. Kırmızı ve yeşil sebzelerle zenginleştirilmiş salata. Esmer pirinç veya tatlı patates.",style: TextStyle(fontSize: 16, ),)),


                    SizedBox(height: 25,),
                    Text("Akşam",style: TextStyle(fontSize: 18, ),),
                    SizedBox(height: 15,),
                    Center(child: Text("Dana eti veya kırmızı mercimek yemeği. Brokoli veya kuşkonmaz. Quinoa veya bulgur pilavı.",style: TextStyle(fontSize: 16, ),)),



                    
              
                  ],

                ),
              ),
              ),
          ),

          const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 400,
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[200],
              ),


              child:  const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
              
              
                  children: [
                    SizedBox(height: 15,),
          Center(child:  Text("Cuma",style: TextStyle(fontSize: 20),)),
                    SizedBox(height: 25,),
                    Text("Kahvaltı",style: TextStyle(fontSize: 18, ),),
                    SizedBox(height: 15,),
                    Center(child: Text("Yulaf ezmesi üzerine taze meyveler ve bir avuç badem. Yoğurt veya süt içeren proteinli içecek.",style: TextStyle(fontSize: 16, ),)),
                    
                    SizedBox(height: 25,),
                    Text("Öğle",style: TextStyle(fontSize: 18, ),),
                    SizedBox(height: 15,),
                    Center(child: Text("Izgara tavuk göğsü veya somon balığı. Kırmızı ve yeşil sebzelerle zenginleştirilmiş salata. Esmer pirinç veya tatlı patates.",style: TextStyle(fontSize: 16, ),)),


                    SizedBox(height: 25,),
                    Text("Akşam",style: TextStyle(fontSize: 18, ),),
                    SizedBox(height: 15,),
                    Center(child: Text("Dana eti veya kırmızı mercimek yemeği. Brokoli veya kuşkonmaz. Quinoa veya bulgur pilavı.",style: TextStyle(fontSize: 16, ),)),



                    
              
                  ],

                ),
              ),
              ),
          ),
          const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 400,
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[200],
              ),


              child:  const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
              
              
                  children: [
                    SizedBox(height: 15,),
          Center(child:  Text("Cumaertesi",style: TextStyle(fontSize: 20),)),
                    SizedBox(height: 25,),
                    Text("Kahvaltı",style: TextStyle(fontSize: 18, ),),
                    SizedBox(height: 15,),
                    Center(child: Text("Yulaf ezmesi üzerine taze meyveler ve bir avuç badem. Yoğurt veya süt içeren proteinli içecek.",style: TextStyle(fontSize: 16, ),)),
                    
                    SizedBox(height: 25,),
                    Text("Öğle",style: TextStyle(fontSize: 18, ),),
                    SizedBox(height: 15,),
                    Center(child: Text("Izgara tavuk göğsü veya somon balığı. Kırmızı ve yeşil sebzelerle zenginleştirilmiş salata. Esmer pirinç veya tatlı patates.",style: TextStyle(fontSize: 16, ),)),


                    SizedBox(height: 25,),
                    Text("Akşam",style: TextStyle(fontSize: 18, ),),
                    SizedBox(height: 15,),
                    Center(child: Text("Dana eti veya kırmızı mercimek yemeği. Brokoli veya kuşkonmaz. Quinoa veya bulgur pilavı.",style: TextStyle(fontSize: 16, ),)),



                    
              
                  ],

                ),
              ),
              ),
          ),
          const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 400,
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[200],
              ),


              child:  const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
              
              
                  children: [
                    SizedBox(height: 15,),
          Center(child:  Text("Pazar",style: TextStyle(fontSize: 20),)),
                    SizedBox(height: 25,),
                    Text("Kahvaltı",style: TextStyle(fontSize: 18, ),),
                    SizedBox(height: 15,),
                    Center(child: Text("Yulaf ezmesi üzerine taze meyveler ve bir avuç badem. Yoğurt veya süt içeren proteinli içecek.",style: TextStyle(fontSize: 16, ),)),
                    
                    SizedBox(height: 25,),
                    Text("Öğle",style: TextStyle(fontSize: 18, ),),
                    SizedBox(height: 15,),
                    Center(child: Text("Izgara tavuk göğsü veya somon balığı. Kırmızı ve yeşil sebzelerle zenginleştirilmiş salata. Esmer pirinç veya tatlı patates.",style: TextStyle(fontSize: 16, ),)),


                    SizedBox(height: 25,),
                    Text("Akşam",style: TextStyle(fontSize: 18, ),),
                    SizedBox(height: 15,),
                    Center(child: Text("Dana eti veya kırmızı mercimek yemeği. Brokoli veya kuşkonmaz. Quinoa veya bulgur pilavı.",style: TextStyle(fontSize: 16, ),)),



                    
              
                  ],

                ),
              ),
              ),
          ),
        ],
      ),
    );
  }
}