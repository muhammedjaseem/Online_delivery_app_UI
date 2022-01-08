import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_machine_test/custom/custom_text.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool istapped1 =false;
    List images=["cofee.png","spa.png","hotels.png","hospital.png"];
    List categoryname=["Restaurants & Cafes","salon & spa","Hotels & Resorts","hospital"];
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: const Color(0xFFE6E9ED),
      appBar: appBar(),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20,bottom: 10),
                  child: CustomText(text: "You've got a deal!",color: Colors.red,size: 20,weight:FontWeight.w700,),
                ),
                SearchBar(context),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: images.length,
                      itemBuilder: (context,index){
                        return category(Uri.parse("assets/images/"+images[index],),categoryname[index]);
                      }),
                ),
              ],
            ),
          ),
          ///home banner
          HomeBanner(context),
          ///home banner

          ///refer
          Refer(),
          ///refer
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
              child: CustomText(text: "Featured Offers",color: Colors.black,weight: FontWeight.w500,),
            ),
          ),
          FeaturedOffers("kinder.png","Kinder Multi Speciality \nHospital",Colors.red),
          FeaturedOffers("vismay.png","Vismay",Colors.grey),
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
            child: CustomText(text: "Restaurant Offers",weight: FontWeight.w500,),
          ),
          Container(
            height: 270,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 4,
                itemBuilder: (context,index){
              return  RestuarantOffers();
            }),
          ),
          const SizedBox(height: 60,),
        ],
      ),
     
    );
  }



  category(image,name){
    return Padding(
      padding: const EdgeInsets.only(left: 5,right: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white),
            child: Image.asset(image.toString()),
          ),
          SizedBox(
            height: 30,
            width: 70,
              child: CustomText(text: name,size: 11,overflow: TextOverflow.visible,textAlign: TextAlign.center,maxlines: 2,color: Colors.black,))
        ],
      ),
    );
  }
  HomeBanner(BuildContext context) {
    return Container(
      height: 260,
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
        child: Stack(
          children: [
            SizedBox(
              height: 200,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                  child: Image.asset("assets/images/img_2.png",fit: BoxFit.fill,)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,right: 20),
              child: Align(
                alignment: Alignment.topRight,
                child: Column(
                children: [
                CustomText(text: "Enjoy",color: Colors.white,),
                CustomText(text: "30% off",color: Colors.pink.shade200,weight: FontWeight.bold,),
                CustomText(text: "at Edassery",color: Colors.white,),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: SizedBox(
                      height: 30,
                      width: 120,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                        ),
                          onPressed: (){}, child: Row(
                        children: [
                          CustomText(text: "See Details",size: 12,color: Colors.white,),
                          const Icon(Icons.arrow_forward,size: 20,)
                        ],
                      )),
                    ),
                  )
                ],
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
  Refer(){
    return Container(
      height: 100,
      width: double.infinity,
      color: const Color(0xFFFFDEDE),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(text: "Refer your friends",color: const Color(0xFFE82121),size: 14,),
                CustomText(text: "Win \u{20B9} 50",color: const Color(0xFFE82121),size: 28,weight: FontWeight.bold,),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset("assets/images/childrens.png"),
          )
        ],
      ),
    );
  }
  FeaturedOffers(image,name,Color color){
    return Container(
      height: 110,
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            child: Image.asset('assets/images/${image}',height: double.infinity,width: 90,),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomText(text: name,size: 14,),
                        IconButton(onPressed: (){
                        }, icon: Icon(Icons.favorite,size: 30,color: color,))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.location_on_rounded,size: 18,color: Colors.grey.shade400,),
                        CustomText(text: "PanamPally Nagar",size: 12,color: Colors.grey.shade400,),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(Icons.star,color: Colors.orange,size: 18,),
                          CustomText(text: "4.5",size: 14,)
                        ],
                      ),
                      CustomText(text: "from 15% OFF",color: Colors.grey,size: 12,)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  RestuarantOffers(){
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
      margin: const EdgeInsets.only(left: 10,right: 10,top: 20),
      height: 275,
      width: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 145,
            width: 300,
            decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/restaurant1.png"),fit: BoxFit.cover,),borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10))),
            padding: const EdgeInsets.only(left: 10,top: 10),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 52,
                width: 72,
                decoration: BoxDecoration(border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 25,
                        width: double.infinity,
                        decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft: const Radius.circular(10),topRight: Radius.circular(10),),color:Color(0xFFBF3A55),),
                        child: Center(child: CustomText(text: "15%",size: 20,weight: FontWeight.bold,color: Colors.white,))),
                    Container(
                        height: 25,
                        width: double.infinity,
                        decoration: const BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),),color:Color(0xFFFF2D55),),
                        child: Center(child: CustomText(text: "TAKEAWAY",size: 12,weight: FontWeight.bold,color: Colors.white,))),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 52,
                  width: 72,
                  decoration: BoxDecoration(border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 25,
                          width: double.infinity,
                          decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft: const Radius.circular(10),topRight: Radius.circular(10),),color:Color(0xFFBF3A55),),
                          child: Center(child: CustomText(text: "20%",size: 20,weight: FontWeight.bold,color: Colors.white,))),
                      Container(
                          height: 25,
                          width: double.infinity,
                          decoration: const BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),),color:Color(0xFFFF2D55),),
                          child: Center(child: CustomText(text: "DINE-IN",size: 12,weight: FontWeight.bold,color: Colors.white,))),
                    ],
                  ),
                ),
              ),
            ],
          ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(text: "Open",color: Colors.green,size: 12,),
                    CustomText(text: "Cocoa Tree",size: 15,),
                    CustomText(text: "Italian  .  Continental .  Deserts",size: 12,color: Colors.grey,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.star,color: Colors.orange,size: 17,),
                        CustomText(text: " 4.5",size: 12,),
                        const Padding(
                          padding: EdgeInsets.only(left: 4),
                          child: const Icon(Icons.location_on_rounded,size: 17,color: Colors.green,),
                        ),
                        CustomText(text: " PanamPally Nagar",size: 12,color: Colors.green,),
                      ],
                    )
                  ],
                ),
                IconButton(onPressed: (){}, icon: const Icon(Icons.favorite,size: 30,color: Colors.red,))
              ],
            ),
          )
        ],
      ),
    );
  }
}


AppBar appBar(){
  return AppBar(
    backgroundColor: const Color(0xFFE6E9ED),
    elevation: 0.0,
    leading: const Padding(
      padding: EdgeInsets.all(6.0),
      child: CircleAvatar(
        radius:30,
        backgroundImage: AssetImage("assets/images/person.png"),
      ),
    ),
    title: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(text:"Hello, John",size: 17,weight: FontWeight.w200),
        Row(children: [
           Icon(Icons.add_location,size: 12,color: Colors.grey.shade900,),
          CustomText(text:"panampally Nagar,Ernakulam  ",size: 12,color: Colors.grey.shade900,weight: FontWeight.w200,),
           Icon(Icons.keyboard_arrow_down,size: 14,color: Colors.grey.shade900)
        ],)
      ],
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(top:10,right: 10),
        child: Stack(
          children: [
            Icon(Icons.notifications_none_outlined,size: 35,color: Colors.black.withOpacity(0.9),),
            Positioned(
                top: 3,
                left: 2,
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.red),
                  child:  Center(child: CustomText(text: "1",color: Colors.white,size: 10,)),
                ))
          ],
        ),
      ),
    ],
  );
}

Widget SearchBar(BuildContext context){
  return Container(
    height: 50,
    width: MediaQuery.of(context).size.width,
    //decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey.shade100),
    child:TextFormField(
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        suffixIcon:  Padding(
          padding: const EdgeInsets.only(left: 15,right: 10,top: 15,bottom: 15),
          child: Image.asset("assets/images/filter.png",fit: BoxFit.fill,),
        ),
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10)),
        hintText: "Search for shops/offers",
        contentPadding: const EdgeInsets.only(top: 10),
        hintStyle: TextStyle(color: Colors.grey.shade600),
        enabled: true,
      ),
    ),
  );
}
