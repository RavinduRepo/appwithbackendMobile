import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiHelper {
  static Future<String> getPublicIp() async {
    final url = Uri.parse('https://api64.ipify.org?format=json');
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return data['ip'];
      } else {
        throw Exception('Failed to get IP address');
      }
    } catch (e) {
      print('Error fetching IP address: $e');
      return '';
    }
  }
}
