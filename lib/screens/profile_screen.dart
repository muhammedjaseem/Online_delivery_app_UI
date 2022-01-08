import 'package:flutter/material.dart';
import 'package:ui_machine_test/custom/custom_text.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFE6E9ED),
        body: ListView(
          children: [
            Align(
              alignment: Alignment.topRight,
                child: IconButton(onPressed: (){}, icon: const Icon(Icons.edit_outlined,size: 30,color: Colors.grey,))),
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("assets/images/person.png"),
          ),
            Center(child: CustomText(text: "John Doe",size: 20,)),
            Center(child: CustomText(text: "john@doe.com",size: 12,color: Colors.grey,)),
            Row(
              children: [
                Container(
                  height: 70,
                  width: 130,
                  margin: const EdgeInsets.only(left: 20,top: 10),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/point.png",height: 40,width: 40,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(text: "155",weight: FontWeight.w600,),
                            CustomText(text: "Points   >",size: 12,color: Colors.grey),
                          ],
                        ),
                      )
                    ],
                  )
                ),
                Expanded(
                  child: Container(
                      height: 70,
                      margin: const EdgeInsets.only(left: 20,right: 20,top: 10),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/money.png",height: 40,width: 40,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(text: "RS. 2670",weight: FontWeight.w600,),
                                CustomText(text: "Saved",size: 12,color: Colors.grey,),
                              ],
                            ),
                          )
                        ],
                      )
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30,),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Column(
                children: [
                  ListTile(
                    onTap: (){},
                    leading: QuestionIcon(),
                    title: CustomText(text: "Terms of Service",),
                  trailing: const Icon(Icons.arrow_forward_ios),),
                  const Divider(),
                  ListTile(
                    leading: const Icon(Icons.card_giftcard),
                    title: CustomText(text: "Invite Friends",),
                  trailing: const Icon(Icons.arrow_forward_ios),),
                  const Divider(),
                  ListTile(
                    leading: QuestionIcon(),
                    title: CustomText(text: "Game Zone",),
                    trailing: Container(
                      height: 20,
                      width: 80,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color:const Color(
                          0xFFFF2D55) ),
                      child: const Center(child: Text("COMMING SOON",style:TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white,))),)),
                  const Divider(),
                  ListTile(
                    leading: QuestionIcon(),
                    title: CustomText(text: "Help Center",),
                    trailing: const Icon(Icons.arrow_forward_ios),),
                  const Divider(),
                  ListTile(
                    leading: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(color: Colors.white,shape: BoxShape.circle,border: Border.all(color: Colors.grey)),
                      child: const Center(child: Text("i"),
                      ),
                    ),
                    title: CustomText(text: "Contact Us",),
                    trailing: const Icon(Icons.arrow_forward_ios),),
                  const Divider(),
                  ListTile(
                    leading: const Icon(Icons.logout),
                    title: CustomText(text: "Sign Out",),
                    trailing: const Icon(Icons.arrow_forward_ios),),
                ],
              ),
            ),
            Container(
              height: 40,
            color: Colors.white,),
          ],
        ),
      ),
    );
  }
  QuestionIcon(){
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(color: Colors.white,shape: BoxShape.circle,border: Border.all(color: Colors.grey)),
      child: const Center(child: Text("?"),
      ),
    );
  }
}
