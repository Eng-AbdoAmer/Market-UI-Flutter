import 'package:flutter/material.dart';

class CustomListtile extends StatelessWidget {
  const CustomListtile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      child: ListTile(
        title: Text("Top collages",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        subtitle: Text("10 Items",style: TextStyle(fontSize: 15)),
        trailing: IconButton(onPressed: (){},icon: Icon(Icons.arrow_forward_ios_outlined)),
      ),
    );
  }
}
