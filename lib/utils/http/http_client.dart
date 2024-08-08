import 'dart:convert';
import 'package:http/http.dart' as httpClient;

class FHttpHelper {
  static const String _baseUrl = 'https://api.example.com';

  static get http => null;

  //--helper method to make GET request
  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await httpClient.get(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  //--helper method to make POST request
  static Future<Map<String, dynamic>> post(
      String endpoint, dynamic data) async {
    final response = await httpClient.post(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  //--helper method to make PUT request
  static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
    final response = await httpClient.put(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  //--helper method to make DELETE request
  static Future<Map<String, dynamic>> delete(String endpoint) async {
    final response = await httpClient.delete(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  //---- handle the HTTP response
  static Map<String, dynamic> _handleResponse(httpClient.Response response) {
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}
// Commit at 2022-10-17 17:02:16
// Commit at 2023-10-25 10:32:21
// Commit at 2023-07-06 16:56:12
// Commit at 2023-08-01 17:12:08
// Commit at 2024-12-09 17:25:24
// Commit at 2024-01-04 09:54:09
// Commit at 2024-05-24 11:12:59
// Commit at 2024-01-19 10:32:56
// Random commit
// Random commit
Random commit
Random commit
Random commit
Random commit
Random commit
Random commit
