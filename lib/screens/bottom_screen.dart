import 'package:flutter/material.dart';
import 'package:ui_machine_test/screens/home.dart';
import 'package:ui_machine_test/screens/profile_screen.dart';
class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List<Widget>bodyitems=[
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const ProfileScreen()
  ];
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyitems[selectedIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 60,
        width: 60,
        decoration:  BoxDecoration(shape: BoxShape.circle,color: Colors.red,border: Border.all(color: Colors.white,width: 3)),
        child: const Icon(Icons.location_on_rounded,color: Colors.white,size: 40,),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,

        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  setState(() {
                    selectedIndex =0;
                  });
                },
                  child:selectedIndex ==0?Container(
                height: 40,
                  width: 40,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color(0xFFFFDEDE)),
                  child: const Icon(Icons.home,size: 30,color: Color(0xFFE82121),)):const Icon(Icons.home,color: Colors.grey,size: 30,)),
              InkWell(
                  onTap: (){
                    setState(() {
                      selectedIndex =1;
                    });
                  },
                  child:selectedIndex ==1?Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color(0xFFFFDEDE)),
                      child: const Icon(Icons.favorite_border,size: 30,color: Color(0xFFE82121),)):const Icon(Icons.favorite_border,color: Colors.grey,size: 30,)),
              const SizedBox.shrink(),
              InkWell(
                  onTap: (){
                    setState(() {
                      selectedIndex =2;
                    });
                  },
                  child:selectedIndex ==2?Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color(0xFFFFDEDE)),
                      child:  Image.asset("assets/images/offer.png",height: 20,width: 20,fit: BoxFit.scaleDown,color:Color(0xFFE82121),)):  Image.asset("assets/images/offer.png",height: 25,width: 25,fit: BoxFit.fill,)),
              InkWell(
                  onTap: (){
                    setState(() {
                      selectedIndex =3;
                    });
                  },
                  child:selectedIndex ==3?Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color(0xFFFFDEDE)),
                      child: const Icon(Icons.person_outline_outlined,size: 30,color: Color(0xFFE82121),)):const Icon(Icons.person_outline_outlined,color: Colors.grey,size: 30,)),
            ],
          ),
        ),
      ),
    );
  }
}
