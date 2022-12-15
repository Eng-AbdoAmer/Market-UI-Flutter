import 'package:flutter/material.dart';

import '../../data/editor_controller/editor_controller.dart';
import '../../presentation/resources/color_manager/color_manager.dart';

class ScrollCategorise extends StatelessWidget {
   ScrollCategorise({Key? key}) : super(key: key);
var editController=EditorController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(

        children: [
          Stack(
              children:[
                InkWell(
                  onTap: (){
                    editController.showEditorDialog(context: context);
                  },
                  child: Container(
                    height: 220,
                    width: 160,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius:BorderRadius.circular(20),
                    ),
                  ),
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.close,color: ColorManager.grey,size: 25,)),
              ]
          ),
          SizedBox(width: 10,),
          Stack(
              children:[
                InkWell(
                  onTap: (){
                    editController.showEditorDialog(context: context);
                  },
                  child: Container(
                    height: 220,
                    width: 160,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius:BorderRadius.circular(20),
                    ),
                  ),
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.close,color: ColorManager.grey,size: 25,)),
              ]
          ),
          SizedBox(width: 10,),
          Stack(
              children:[
                InkWell(
                  onTap: (){
                    editController.showEditorDialog(context: context);
                  },
                  child: Container(
                    height: 220,
                    width: 160,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius:BorderRadius.circular(20),
                    ),
                  ),
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.close,color: ColorManager.grey,size: 25,)),
              ]
          ),
          SizedBox(width: 10,),
          Stack(
              children:[
                InkWell(
                  onTap: (){
                    editController.showEditorDialog(context: context);
                  },
                  child: Container(
                    height: 220,
                    width: 160,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius:BorderRadius.circular(20),
                    ),
                  ),
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.close,color: ColorManager.grey,size: 25,)),
              ]
          ),
        ],
      ),
    );
  }
}
