import 'package:get/get.dart';

import '../../app/network/get_all_categories.dart';
import '../../domain/models/model_get_all_categories.dart';

class CategoriesController extends GetxController{
 // RxList allCategories=[].obs;
  var allCategories = <CategoriesModel>[].obs;


  void fetchCategories ()async{
    var r = await RequestAllCategories.getCategoriesRequest();
    if(r !=null){
      allCategories.value =getAllCategoriesModelFromJson(r);
    }
  }
  @override
  void onInit() {
    fetchCategories();
    super.onInit();
  }
}