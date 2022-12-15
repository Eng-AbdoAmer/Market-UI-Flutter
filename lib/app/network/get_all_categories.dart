import 'package:http/http.dart' as http;

class RequestAllCategories {
  static Future<String?> getCategoriesRequest() async {
    try {
      var url =
          "https://api.escuelajs.co/api/v1/categories/";
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return response.body;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
