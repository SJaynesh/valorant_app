import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:valorant_app/models/agets_model.dart';

class APIHelper {
  // Private Named Constructor
  APIHelper._();

  // Singleton Object
  static APIHelper apiHelper = APIHelper._();

  // Method
  Future<List<AgentsModel>?> fetchValorantAgents() async {
    Uri url = Uri.parse("https://valorant-api.com/v1/agents");

    http.Response res = await http.get(url);

    if (res.statusCode == 200) {
      Map<String, dynamic> apiData = jsonDecode(res.body);

      List allAgents = apiData['data'];

      List<AgentsModel> allAgentsList = allAgents
          .map(
            (e) => AgentsModel.fromJson(json: e),
          )
          .toList();

      return allAgentsList;
    }
    return null;
  }
}
