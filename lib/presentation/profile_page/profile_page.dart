import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:market/presentation/resources/color_manager/color_manager.dart';
import '../../app/widget/profile_listTile.dart';
import '../../app/widget/profilelistTile_wicon.dart';
import '../../data/showlogout_dialog/showlogout_dialog.dart';
import '../resources/assets_manager/assets_manager.dart';
import '../resources/routes_manager/routes_manager.dart';

class ProfilePage extends StatelessWidget {
   ProfilePage({Key? key}) : super(key: key);
var profileController =ShowLogoutDialog();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My profile",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: ColorManager.black),),
        centerTitle: true,
        backgroundColor: ColorManager.white,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none,color: ColorManager.black,size: 25,))
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              ListTile(
                title: Text("Full name",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                subtitle:Text("example@gmail.com",style: TextStyle(fontSize: 15,color: ColorManager.darkGrey),) ,

                trailing: Badge(
                    position:BadgePosition.bottomEnd() ,
                      badgeContent: CircleAvatar(radius: 12,backgroundColor: ColorManager.primary,child: IconButton(onPressed: (){},icon: Icon(Icons.edit,size: 20,),)),
                    child: CircleAvatar(radius: 30,backgroundColor: ColorManager.grey,child:Image.asset(ImageAssets.appleLogo) ,)),
              ),
            SizedBox(height: 20,),
            ProfileListTile(Title: "My collages",SubTitle: "10 Items",onPressed: (){Get.toNamed(Routes.myCollages);}),
            SizedBox(height: 20,),
            ProfileListTile(Title: "My likes",SubTitle: "40 Items",onPressed: (){}),
            SizedBox(height: 20,),
            ProfileListTile(Title: "My dislikes",SubTitle: "20 Items",onPressed: (){}),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text("Settings",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 20,),
            ProfileListTileWicon(Title: "My orders",onPressed: (){},Xicon: Icons.shopping_cart),
            SizedBox(height: 20,),
            ProfileListTileWicon(Title: "Saved addresses",onPressed: (){},Xicon: Icons.location_on),
            SizedBox(height: 20,),
            ProfileListTileWicon(Title: "Logout",onPressed: (){
              profileController.clickLogOut(context);
            },Xicon: Icons.settings),
          ],
        ),
      ),
    );
  }

}
