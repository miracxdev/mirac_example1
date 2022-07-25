import 'package:http/http.dart' as http;
import 'package:mirac_flutter_study/model.dart';

class HomeService {
  List<HomeResponse> homeResponseList = [];

  getData() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await http.get(url);

    homeResponseList = homeResponseFromJson(response.body);

    print(homeResponseList[0].body);
  }
}
