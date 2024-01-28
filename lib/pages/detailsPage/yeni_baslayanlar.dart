import 'package:flutter/material.dart';

class YeniBaslayanlar extends StatelessWidget {
  const YeniBaslayanlar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(title: const Text("               G Y M",style: TextStyle(color: Colors.black,fontSize: 25),),backgroundColor:Colors.grey[300] ,elevation: 0,
      leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon:  Icon(
            Icons.arrow_back_ios,color: Colors.grey[800],
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
      },
    ),
      
      ),

      body: ListView(
        children:  [
          const Center(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Text("Fitness Programı 1. Ay İçeriği:",style: TextStyle(color: Colors.black,fontSize: 20),),
            ),
          ),
          const SizedBox(height: 18,),

        const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text("4 hafta boyunca pazartesi,çarşamba,ve cuma günleri bu antrenmanlar yapılacaktır. Geri kalan günler dinlenme günüdür.",
            style: TextStyle(color: Colors.black,fontSize: 16),),
            
          ),


          const SizedBox(height: 22,),
          

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 220,
                    
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
          image: NetworkImage('https://i0.wp.com/www.sporsalbilgiler.com/wp-content/uploads/2017/07/how-to-run-on-an-inclined-treadmill.gif?ssl=1'),
          fit: BoxFit.cover
        ) ,
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[400],
                      boxShadow:const [BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 10,
                          spreadRadius: 10,
                        ),
                      ] 
                      
                    ),
            ),
            
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text("Koşu bandı : 10 Dakika  = Kardiyo\n\nİlk gün kendinizi çok fazla zorlamayın. 4 km hızda 5 dakika yürüyün. Kalan 5 dakikada ise 6 km hıza geçin ve hızlı adımlarla yürüyün.",
            style: TextStyle(color: Colors.black,fontSize: 18),),
            
          ),
          const SizedBox(height: 15,),

          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 220,
                    
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
          image: NetworkImage('https://www.inspireusafoundation.org/wp-content/uploads/2022/10/leg-press.gif'),
          fit: BoxFit.cover
        ) ,
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[400],
                      boxShadow:const [BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 10,
                          spreadRadius: 10,
                        ),
                      ] 
                      
                    ),
            ),
            
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text("Leg Press :  3 Set 10 Tekrar = Bacak\n\nBu makinede; üst ön bacak kaslarımızı (Quadriceps), indirme anı yavaş yapılırsa arka bacak kaslarımızı (Hamstrings) ve  kalça (Gluteus) kaslarımızı çalıştırıyoruz.",
            style: TextStyle(color: Colors.black,fontSize: 18),),
            
          ),
          
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 280,
                    
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
          image: NetworkImage('https://www.inspireusafoundation.org/wp-content/uploads/2022/10/weighted-calf-raise.gif'),
          fit: BoxFit.cover
        ) ,
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[400],
                      boxShadow:const [BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 10,
                          spreadRadius: 10,
                        ),
                      ] 
                      
                    ),
            ),
            
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text("Calf Raises : 3 Set 10 Tekrar = Kalf\n\nBacak kaslarımızı çalıştırdıktan sonra kalf kaslarımıza yani baldır kısmına geçebiliriz.",
            style: TextStyle(color: Colors.black,fontSize: 18),),
            
          ),


          const SizedBox(height: 15,),



          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
                    
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
          image: NetworkImage('https://newlife.com.cy/wp-content/uploads/2019/11/03011301-Dumbbell-Decline-Bench-Press_Chest_360.gif'),
          fit: BoxFit.cover
        ) ,
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[400],
                      boxShadow:const [BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 10,
                          spreadRadius: 10,
                        ),
                      ] 
                      
                    ),
            ),
            
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text("Dumbbell Bench Press : 3 set 10 Tekrar = Göğüs\n\nDüz bench sehpasına uzanın ve düşük ağırlıkta örneğin 5 kg lık dumbbell’ları iki elinize de alın.  Örnekte gösterildiği gibi göğüs hizanızdan yukarı doğru birleştirerek itin (bir kaç cm kalana kadar, tam olarak temas etmeyecek).",
            style: TextStyle(color: Colors.black,fontSize: 18),),
            
          ),
          const SizedBox(height: 15,),





          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 305,
                    
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
          image: NetworkImage('https://fitnessprogramer.com/wp-content/uploads/2021/02/Dumbbell-Shoulder-Press.gif'),
          fit: BoxFit.cover
        ) ,
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[400],
                      boxShadow:const [BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 10,
                          spreadRadius: 10,
                        ),
                      ] 
                      
                    ),
            ),
            
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text("Dumbbell Shoulder Press : 3 Set 10 Tekrar = Omuz\n\nDüşük ağırlıkta iki adet dumbbell alın. Örnekte görüldüğü gibi avuç içleriniz karşıya bakar halde iken, baş hizanızdan itmeye başlayıp, tepede dumbbell’ların birbirine değmesine bir kaç cm kalana kadar itin.",
            style: TextStyle(color: Colors.black,fontSize: 18),),
            
          ),
          
          const SizedBox(height: 15,),

          


          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 270,
                    
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
          image: NetworkImage('https://cdn.shopify.com/s/files/1/0514/8449/1961/files/01971305-Cable-Pulldown-_pro-lat-bar__Back_1080_480x480.gif?v=1636633136'),
          fit: BoxFit.cover
        ) ,
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[400],
                      boxShadow:const [BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 10,
                          spreadRadius: 10,
                        ),
                      ] 
                      
                    ),
            ),
            
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text("Lat Pulldown : 3 Set 10 Tekrar = Sırt\n\nBu sırt egzersizi Lat pulldown makinesinde yapılır. Ellerinizi omuz genişliğinden biraz daha açık olarak ayarlayıp barı kavrayın.Çekiş anında üst gövdeyi fazla hareket ettirmeden, barı göğsünüzün üst kısmına doğru çekin. Barı salarken çekiş hızınızdan daha düşük bir hızda salın.",
            style: TextStyle(color: Colors.black,fontSize: 18),),
            
          ),


          const SizedBox(height: 15,),

          


          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 350,
                    
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
          image: NetworkImage('https://newlife.com.cy/wp-content/uploads/2019/11/22381301-EZ-Barbell-Curl-female_Upper-Arms_360.gif'),
          fit: BoxFit.cover
        ) ,
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[400],
                      boxShadow:const [BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 10,
                          spreadRadius: 10,
                        ),
                      ] 
                      
                    ),
            ),
            
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text("Barbell Curl : 3 Set 10 Tekrar = Ön Kol\n\nAyaklarınızı bir omuz genişliğinde açın. Eller yere doğru dik pozisyonda harekete başlayın ve ağırlığı göğsünüze kadar kaldırın. İndirirken daha yavaş indirin. Bunun sebebi ağırlığın negatifinden de faydalanmaktır",
            style: TextStyle(color: Colors.black,fontSize: 18),),
            
          ),
          const SizedBox(height: 15,),

          


          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 220,
                    
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
          image: NetworkImage('https://www.inspireusafoundation.org/wp-content/uploads/2023/03/straight-bar-tricep-pushdown.gif'),
          fit: BoxFit.cover
        ) ,
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[400],
                      boxShadow:const [BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 10,
                          spreadRadius: 10,
                        ),
                      ] 
                      
                    ),
            ),
            
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text("Triceps Push Down : 3 Set 10 Tekrar = Arka Kol\n\nTriceps pushdown makinesine uygun ağırlığı takın ve sadece kollarınızı kullanarak barı aşağıya itin.Kollarınız yere paralel şekilde harekete başlamalı ve barı aşağıya ittiğiniz de yere tam dik konumda olmalıdır. Yani 90 derecelik bir açı arasında çalışacaksınız.",
            style: TextStyle(color: Colors.black,fontSize: 18),),
            
          ),

          const SizedBox(height: 15,),

          


          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 260,
                    
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
          image: NetworkImage('https://fitnessprogramer.com/wp-content/uploads/2015/11/Crunch.gif'),
          fit: BoxFit.cover
        ) ,
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[400],
                      boxShadow:const [BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 10,
                          spreadRadius: 10,
                        ),
                      ] 
                      
                    ),
            ),
            
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text("Crunch : 1 Set  Max. Tekrar = Karın\n\nDizlerinizi kırın ve yere basın. Nefes alın ve 45 derece açıyı sağlayacak kadar üst gövdenizi yükseltin. Burada ki püf noktası ise hareketi yaparken bir tırtıl olduğunuzu düşünmeniz",
            style: TextStyle(color: Colors.black,fontSize: 18),),
            
          ),
        ],
      ),
    );
  }
}